#include "userprog/process.h"
#include <debug.h>
#include <inttypes.h>
#include <round.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "userprog/gdt.h"
#include "userprog/pagedir.h"
#include "userprog/tss.h"
#include "filesys/directory.h"
#include "filesys/file.h"
#include "filesys/filesys.h"
#include "threads/flags.h"
#include "threads/init.h"
#include "threads/interrupt.h"
#include "threads/palloc.h"
#include "threads/thread.h"
#include "threads/vaddr.h"
#include "threads/malloc.h"

#include "userprog/moro-parse-args.h"
#include "userprog/moro-syscalls-process.h"
#include "userprog/commons-process.h"

#include "vm/common-supp-pd.h"


static thread_func start_process NO_RETURN;
static bool load (const char *cmdline, void (**eip) (void), void **esp);

/// holds in list all processes started by kernel or which have been orphaned.
struct list GLOBAL_PROCESSES = LIST_INITIALIZER(GLOBAL_PROCESSES);

static char *
allocate_elf_name(const char *str)
{
    size_t cmd_line_sz = strlen(str) + 1;
    char *str2 = malloc(cmd_line_sz);
    strlcpy(str2, str, cmd_line_sz);

    char *file_name_end = str2;
    while (*file_name_end && !isspace(*file_name_end)) {
        file_name_end++;
    }

    size_t sz = file_name_end - str2 + 1; // +1 for the null terminator
    char c = *file_name_end;
    *file_name_end = '\0';

    char *file_name = malloc(sz);
    strlcpy(file_name, str2, sz);
    *file_name_end = c;

    free(str2);

    return file_name;
}

/* Starts a new thread running a user program loaded from
   FILENAME.  The new thread may be scheduled (and may even exit)
   before process_execute() returns.  Returns the new process's
   thread id, or TID_ERROR if the thread cannot be created. */
tid_t
process_execute (const char *cmd_line) 
{
    if (NULL != thread_current()->pd && !validate_read_string(cmd_line)) {
        // this is a user process
        process_exit(EXIT_FAILURE);
    } else {
        char *file = allocate_elf_name((char*)cmd_line);
        struct file *f = filesys_open(file);
        free(file);

        if (NULL == f) {
            return -1;
        }
    }

    char *fn_copy;
    tid_t tid;
    
    /* Make a copy of FILE_NAME.
     Otherwise there's a race between the caller and load(). */
    fn_copy = palloc_get_page (0);
    if (fn_copy == NULL)
        return TID_ERROR;
    strlcpy (fn_copy, cmd_line, PGSIZE);

    /* it is important to create the process descriptor
     * while still in the parent in order to link the new threads
     */
    struct proc_desc *pd = new_proc_desc(fn_copy);
    struct proc_desc *cnt_proc = thread_current()->pd;
    if (NULL != cnt_proc) {
        list_push_back(&cnt_proc->child_processes, &pd->elem);

    } else {
        list_push_back(&GLOBAL_PROCESSES, &pd->elem);
    }

    /* Create a new thread to execute FILE_NAME. */
    tid = thread_create (cmd_line, PRI_DEFAULT, start_process, pd);

    /* now wait for creation to actually complete execution */
    sema_down(&pd->wait_create);

    if (tid == TID_ERROR)
        palloc_free_page (fn_copy);
    return tid;
}

/* A thread function that loads a user process and starts it
   running. */
static void
start_process (void *vptr_pd)
{
    struct proc_desc *pd = (struct proc_desc *)vptr_pd;
    printf("starting process %s\n", pd->cmd_line);

    struct thread *cnt_thread = thread_current();
    cnt_thread->pd = pd; //<< process descriptor
    pd->proc_id = cnt_thread->tid;

    // get name of executable
    // cast away const, we are initialising the process, so this is ok
    char *file_name = allocate_elf_name((char *)(pd->cmd_line));

    /**
     * Added by Carmina
     * Open the file and keep it with write denied
     */
    pd->executing_file = filesys_open(file_name);
    file_deny_write(pd->executing_file);

    struct intr_frame if_;
    bool success;

    /* Initialize interrupt frame and load executable. */
    memset (&if_, 0, sizeof if_);
    if_.gs = if_.fs = if_.es = if_.ds = if_.ss = SEL_UDSEG;
    if_.cs = SEL_UCSEG;
    if_.eflags = FLAG_IF | FLAG_MBS;
    success = load (file_name, &if_.eip, &if_.esp);

    /* Assignment Two:
     * added to support command line args, sets up argv and argc,
     * and then returns new esp
     */
    if_.esp = parse_args(pd->cmd_line, if_.esp);

    /* creation finished (with or without success), signal parent and cleanup */
    sema_up(&pd->wait_create);
    free(file_name);

    /* If load failed, quit. */
    if (!success) {
        // TODO sort out why this palloc_free_page was initially outside the if ??
        // palloc_free_page (file_name) (process_exit calls palloc_free_page internally)
        process_exit (EXIT_FAILURE);
    }

    /* Start the user process by simulating a return from an
     interrupt, implemented by intr_exit (in
     threads/intr-stubs.S).  Because intr_exit takes all of its
     arguments on the stack in the form of a `struct intr_frame',
     we just point the stack pointer (%esp) to our stack frame
     and jump to it. */
    asm volatile ("movl %0, %%esp; jmp intr_exit" : : "g" (&if_) : "memory");
    NOT_REACHED ();
}

// please compiler warning
bool find_by_tid(const struct list_elem *a, void *aux);

bool find_by_tid (const struct list_elem *a,
                  void *aux)
{
    struct proc_desc *proc = list_entry(a, struct proc_desc, elem);
    tid_t tid = *(tid_t*)(aux);
    return proc->proc_id == tid;
}

/* Waits for thread TID to die and returns its exit status.  If
   it was terminated by the kernel (i.e. killed due to an
   exception), returns -1.  If TID is invalid or if it was not a
   child of the calling process, or if process_wait() has already
   been successfully called for the given TID, returns -1
   immediately, without waiting.

   This function will be implemented in problem 2-2.  For now, it
   does nothing. */
int
process_wait (tid_t child_tid)
{
    // kernel threads can wait on the global process list
    struct list *ls = (NULL != thread_current()->pd) ?
                            &(thread_current()->pd->child_processes) :
                            &GLOBAL_PROCESSES;

    struct list_elem *ch = list_find(ls, find_by_tid, &child_tid);
    if (ch == list_end(ls)) {
        return -1;
    }

    // normal execution path, wait for process.
    struct proc_desc *pd = list_entry(ch, struct proc_desc, elem);

    lock_acquire(&pd->wait_bcast_lock);
    if (!(pd->state == PROCESS_ZOMBIE)) {
        cond_wait(&pd->wait_bcast, &pd->wait_bcast_lock);

    }

    int ret = pd->ret_sts;
    lock_release(&pd->wait_bcast_lock);
    // TODO if we will support waiting on any process, we cannot
    // cleanup the struct *pd
    list_remove(&pd->elem);
    free_proc_desc(pd);

    return ret;
}

/* Free the proc_thread process's resources. */
void
process_exit (int ret_sts)
{
    /* ---- Process Descriptor Cleanup ---- */
    struct thread *cur = thread_current ();
    struct proc_desc *cnt_proc = cur->pd;

    /* ---- Announce Kernel we are exiting ---- */
    // allocate_elf_name places a NULL after our process name
    // before calling strcpy, for efficiency reasons. (it then
    // restores original state of the string). therefore we need
    // to cast away const.
    char *p_name = allocate_elf_name((char*)cnt_proc->cmd_line);
    printf ("%s: exit(%d)\n", p_name, ret_sts);
    free(p_name);

    // move children to global process list
    struct list *ch_ls = &cnt_proc->child_processes;
    struct list_elem *e;
    for (e = list_begin(ch_ls); e != list_end(ch_ls); e = list_next(e)) {
        struct proc_desc *pd = list_entry(e, struct proc_desc, elem);
        pd->parent = NULL; // NULL for top-level processes and orphaned processed
        list_remove(e);
        list_push_back(&GLOBAL_PROCESSES, e);
    }

    // copy exit code and signal exit to parent
    lock_acquire(&(cnt_proc->wait_bcast_lock));

    cnt_proc->ret_sts = ret_sts;
    cnt_proc->state = PROCESS_ZOMBIE;
    cond_signal(&(cnt_proc->wait_bcast), &(cnt_proc->wait_bcast_lock));

    lock_release(&(cnt_proc->wait_bcast_lock));

    /**
     * Added by Carmina
     * Allow write on the file being executed close it
     */
    file_allow_write(cnt_proc->executing_file);
    file_close(cnt_proc->executing_file);

    /* ---- Page Directory Cleanup ---- */
    uint32_t *pd;

    /* Destroy the proc_thread process's page directory and switch back
     to the kernel-only page directory. */
    pd = cur->pagedir;
    if (pd != NULL)
    {
        /* Correct ordering here is crucial.  We must set
         cur->pagedir to NULL before switching page directories,
         so that a timer interrupt can't switch back to the
         process page directory.  We must activate the base page
         directory before destroying the process's page
         directory, or our active page directory will be one
         that's been freed (and cleared). */
        cur->pagedir = NULL;
        pagedir_activate (NULL);
        pagedir_destroy (pd);
    }

    thread_exit();
}

/* Sets up the CPU for running user code in the current
   thread.
   This function is called on every context switch. */
void
process_activate (void)
{
    struct thread *t = thread_current ();

    /* Activate thread's page tables. */
    pagedir_activate (t->pagedir);

    /* Set thread's kernel stack for use in processing
     interrupts. */
    tss_update ();
}

/* We load ELF binaries.  The following definitions are taken
   from the ELF specification, [ELF1], more-or-less verbatim.  */

/* ELF types.  See [ELF1] 1-2. */
typedef uint32_t Elf32_Word, Elf32_Addr, Elf32_Off;
typedef uint16_t Elf32_Half;

/* For use with ELF types in printf(). */
#define PE32Wx PRIx32   /* Print Elf32_Word in hexadecimal. */
#define PE32Ax PRIx32   /* Print Elf32_Addr in hexadecimal. */
#define PE32Ox PRIx32   /* Print Elf32_Off in hexadecimal. */
#define PE32Hx PRIx16   /* Print Elf32_Half in hexadecimal. */

/* Executable header.  See [ELF1] 1-4 to 1-8.
   This appears at the very beginning of an ELF binary. */
struct Elf32_Ehdr
{
    unsigned char e_ident[16];
    Elf32_Half    e_type;
    Elf32_Half    e_machine;
    Elf32_Word    e_version;
    Elf32_Addr    e_entry;
    Elf32_Off     e_phoff;
    Elf32_Off     e_shoff;
    Elf32_Word    e_flags;
    Elf32_Half    e_ehsize;
    Elf32_Half    e_phentsize;
    Elf32_Half    e_phnum;
    Elf32_Half    e_shentsize;
    Elf32_Half    e_shnum;
    Elf32_Half    e_shstrndx;
};

/* Program header.  See [ELF1] 2-2 to 2-4.
   There are e_phnum of these, starting at file offset e_phoff
   (see [ELF1] 1-6). */
struct Elf32_Phdr
{
    Elf32_Word p_type;
    Elf32_Off  p_offset;
    Elf32_Addr p_vaddr;
    Elf32_Addr p_paddr;
    Elf32_Word p_filesz;
    Elf32_Word p_memsz;
    Elf32_Word p_flags;
    Elf32_Word p_align;
};

/* Values for p_type.  See [ELF1] 2-3. */
#define PT_NULL    0            /* Ignore. */
#define PT_LOAD    1            /* Loadable segment. */
#define PT_DYNAMIC 2            /* Dynamic linking info. */
#define PT_INTERP  3            /* Name of dynamic loader. */
#define PT_NOTE    4            /* Auxiliary info. */
#define PT_SHLIB   5            /* Reserved. */
#define PT_PHDR    6            /* Program header table. */
#define PT_STACK   0x6474e551   /* Stack segment. */

/* Flags for p_flags.  See [ELF3] 2-3 and 2-4. */
#define PF_X 1          /* Executable. */
#define PF_W 2          /* Writable. */
#define PF_R 4          /* Readable. */

static bool setup_stack (void **esp);
static bool validate_segment (const struct Elf32_Phdr *, struct file *);
static bool load_segment (struct file *file, off_t ofs, uint8_t *upage,
                          uint32_t read_bytes, uint32_t zero_bytes,
                          bool writable);

/* Loads an ELF executable from FILE_NAME into the current thread.
   Stores the executable's entry point into *EIP
   and its initial stack pointer into *ESP.
   Returns true if successful, false otherwise. */
bool
load (const char *file_name, void (**eip) (void), void **esp) 
{
    struct thread *t = thread_current ();
    struct Elf32_Ehdr ehdr;
    struct file *file = NULL;
    off_t file_ofs;
    bool success = false;
    int i;

    /* Allocate and activate page directory. */
    t->pagedir = pagedir_create ();
    t->sup_pagedir = sup_page_dir_alloc();
    if (t->pagedir == NULL || t->sup_pagedir == NULL)
        goto done;
    process_activate ();

    /* Open executable file. */
    sema_down(&fs_sema);
    file = filesys_open (file_name);
    if (file == NULL)
    {
        printf ("load: %s: open failed\n", file_name);
        goto done;
    }

    /* Read and verify executable header. */
    if (file_read (file, &ehdr, sizeof ehdr) != sizeof ehdr
            || memcmp (ehdr.e_ident, "\177ELF\1\1\1", 7)
            || ehdr.e_type != 2
            || ehdr.e_machine != 3
            || ehdr.e_version != 1
            || ehdr.e_phentsize != sizeof (struct Elf32_Phdr)
            || ehdr.e_phnum > 1024)
    {
        printf ("load: %s: error loading executable\n", file_name);
        goto done;
    }

    /* Read program headers. */
    file_ofs = ehdr.e_phoff;
    for (i = 0; i < ehdr.e_phnum; i++)
    {
        struct Elf32_Phdr phdr;

        if (file_ofs < 0 || file_ofs > file_length (file))
            goto done;
        file_seek (file, file_ofs);

        if (file_read (file, &phdr, sizeof phdr) != sizeof phdr)
            goto done;
        file_ofs += sizeof phdr;
        switch (phdr.p_type)
        {
            case PT_NULL:
            case PT_NOTE:
            case PT_PHDR:
            case PT_STACK:
            default:
                /* Ignore this segment. */
                break;
            case PT_DYNAMIC:
            case PT_INTERP:
            case PT_SHLIB:
                goto done;
            case PT_LOAD:
                if (validate_segment (&phdr, file))
                {
                    bool writable = (phdr.p_flags & PF_W) != 0;
                    uint32_t file_page = phdr.p_offset & ~PGMASK;
                    uint32_t mem_page = phdr.p_vaddr & ~PGMASK;
                    uint32_t page_offset = phdr.p_vaddr & PGMASK;
                    uint32_t read_bytes, zero_bytes;
                    if (phdr.p_filesz > 0)
                    {
                        /* Normal segment.
                     Read initial part from disk and zero the rest. */
                        read_bytes = page_offset + phdr.p_filesz;
                        zero_bytes = (ROUND_UP (page_offset + phdr.p_memsz, PGSIZE)
                                - read_bytes);
                    }
                    else
                    {
                        /* Entirely zero.
                     Don't read anything from disk. */
                        read_bytes = 0;
                        zero_bytes = ROUND_UP (page_offset + phdr.p_memsz, PGSIZE);
                    }
                    if (!setup_lazy_load (file, file_page, (void *) mem_page,
                                          read_bytes, zero_bytes, writable))
                        goto done;
                }
                else
                    goto done;
                break;
        }
    }

    /* Set up stack. */
    if (!setup_stack (esp))
        goto done;

    /* Start address. */
    *eip = (void (*) (void)) ehdr.e_entry;

    success = true;

    done:
    /* We arrive here whether the load is successful or not. */
    file_close (file);
    return success;
}

/* load() helpers. */

bool install_page (void *upage, void *kpage, bool writable);

/* Checks whether PHDR describes a valid, loadable segment in
   FILE and returns true if so, false otherwise. */
static bool
validate_segment (const struct Elf32_Phdr *phdr, struct file *file) 
{
    /* p_offset and p_vaddr must have the same page offset. */
    if ((phdr->p_offset & PGMASK) != (phdr->p_vaddr & PGMASK))
        return false;

    /* p_offset must point within FILE. */
    if (phdr->p_offset > (Elf32_Off) file_length (file))
        return false;

    /* p_memsz must be at least as big as p_filesz. */
    if (phdr->p_memsz < phdr->p_filesz)
        return false;

    /* The segment must not be empty. */
    if (phdr->p_memsz == 0)
        return false;

    /* The virtual memory region must both start and end within the
     user address space range. */
    if (!is_user_vaddr ((void *) phdr->p_vaddr))
        return false;
    if (!is_user_vaddr ((void *) (phdr->p_vaddr + phdr->p_memsz)))
        return false;

    /* The region cannot "wrap around" across the kernel virtual
     address space. */
    if (phdr->p_vaddr + phdr->p_memsz < phdr->p_vaddr)
        return false;

    /* Disallow mapping page 0.
     Not only is it a bad idea to map page 0, but if we allowed
     it then user code that passed a null pointer to system calls
     could quite likely panic the kernel by way of null pointer
     assertions in memcpy(), etc. */
    if (phdr->p_vaddr < PGSIZE)
        return false;

    /* It's okay. */
    return true;
}


/* Create a minimal stack by mapping a zeroed page at the top of
   user virtual memory. */
static bool
setup_stack (void **esp) 
{
    uint8_t *kpage;
    bool success = false;

    kpage = palloc_get_page (PAL_USER | PAL_ZERO);
    if (kpage != NULL)
    {
        success = install_page (((uint8_t *) PHYS_BASE) - PGSIZE, kpage, true);
        if (success)
            *esp = PHYS_BASE;
        else
            palloc_free_page (kpage);
    }
    return success;
}

/* Adds a mapping from user virtual address UPAGE to kernel
   virtual address KPAGE to the page table.
   If WRITABLE is true, the user process may modify the page;
   otherwise, it is read-only.
   UPAGE must not already be mapped.
   KPAGE should probably be a page obtained from the user pool
   with palloc_get_page().
   Returns true on success, false if UPAGE is already mapped or
   if memory allocation fails. */
bool
install_page (void *upage, void *kpage, bool writable)
{
    struct thread *t = thread_current ();

    /* Verify that there's not already a page at that virtual
     address, then map our page there. */
    return (pagedir_get_page (t->pagedir, upage) == NULL
            && pagedir_set_page (t->pagedir, upage, kpage, writable));
}
