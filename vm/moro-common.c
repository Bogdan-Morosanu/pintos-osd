/*
 * moro-common.c
 *
 *  Created on: Jan 20, 2017
 *      Author: moro
 */

#include "moro-common.h"

#include "common-vm.h"

#include "userprog/commons-process.h"

#include "threads/thread.h"
#include "threads/synch.h"
#include "threads/vaddr.h"
#include "threads/palloc.h"
#include "threads/pte.h"

#include "vm/carmina-frame.h"

/* Taken from process.c -- non-lazy loading of file
 * Loads a segment starting at offset OFS in FILE at address
   UPAGE.  In total, READ_BYTES + ZERO_BYTES bytes of virtual
   memory are initialized, as follows:

        - READ_BYTES bytes at UPAGE must be read from FILE
          starting at offset OFS.

        - ZERO_BYTES bytes at UPAGE + READ_BYTES must be zeroed.

   The pages initialized by this function must be writable by the
   user process if WRITABLE is true, read-only otherwise.

   Return true if successful, false if a memory allocation error
   or disk read error occurs. */
bool
actually_load_segment (struct file *file, off_t ofs, uint8_t *upage,
                       uint32_t read_bytes, uint32_t zero_bytes, bool writable)
{
    ASSERT ((read_bytes + zero_bytes) % PGSIZE == 0);
    ASSERT (pg_ofs (upage) == 0);
    ASSERT (ofs % PGSIZE == 0);

    file_seek (file, ofs);
    while (read_bytes > 0 || zero_bytes > 0)
    {
        /* Calculate how to fill this page.
         We will read PAGE_READ_BYTES bytes from FILE
         and zero the final PAGE_ZERO_BYTES bytes. */
        size_t page_read_bytes = read_bytes < PGSIZE ? read_bytes : PGSIZE;
        size_t page_zero_bytes = PGSIZE - page_read_bytes;

        /* Get a page of memory. */
        uint8_t *kpage = palloc_get_page (PAL_USER);
        if (kpage == NULL) {
            printf("allocation failed");
            return false;
        }

        /* Load this page. */
        if (file_read (file, kpage, page_read_bytes) != (int) page_read_bytes)
        {
            palloc_free_page (kpage);
            printf("read failed\n");
            return false;
        }
        memset (kpage + page_read_bytes, 0, page_zero_bytes);

        /* Add the page to the process's address space. */
        if (!install_page (upage, kpage, writable))
        {
            printf("install page failed\n");
            palloc_free_page (kpage);
            return false;
        }


        printf("page should be installed...\n");
        struct user_page_handle *u;
        u = malloc(sizeof(struct user_page_handle));
        u->th = thread_current();
        u->vaddr = upage;

        lock_acqure(&user_page_list_lock);
        list_push_back(&user_page_list, &u->elem);
        lock_release(&user_page_list_lock);

        /* Advance. */
        read_bytes -= page_read_bytes;
        zero_bytes -= page_zero_bytes;
        upage += PGSIZE;
    }
    return true;
}



bool setup_lazy_load (struct file *file, off_t ofs, uint8_t *upage,
                      uint32_t read_bytes, uint32_t zero_bytes,
                      bool writable)
{
    printf("setting up page lazy load for %p\n", upage);
    struct thread *t = thread_current();
    struct proc_desc *proc_d = t->pd;
    ASSERT(proc_d);

    struct paged_file_handle *pfh = malloc(sizeof *pfh);
    ASSERT(pfh);

    pfh->type = PAGED_ELF;
    pfh->f = file;
    pfh->ofs = ofs;
    pfh->upage = upage;
    pfh->read_bytes = read_bytes;
    pfh->zero_bytes = zero_bytes;
    pfh->writable = writable;

    if (thread_current() != t->vm_thread_lock.holder) {
        lock_acquire(&t->vm_thread_lock);
    }

    printf("marking page %p for lazy load\n", upage);
    // mark page lazy loaded and not present
    uint32_t *pte = lookup_page(t->pagedir, upage, true);
    printf("pte : %p\n\n", pte);
    printf("clearing page...\n");
    *pte &= ~PTE_P;
    *pte |= PAGE_LAZY_LOADED;
    *pte |= PTE_U;
    *pte |= PTE_W;
    invalidate_pagedir (t->pagedir);

    printf("marked!\n");

    // populate supplemental page dir
    sup_page_dir_set(thread_current(), upage, pfh);

    // populate paged_file_segments list
    printf("pushing back the page_file segment!\n");
    list_push_back(&proc_d->paged_file_segments, &pfh->elem);
    printf("done with the push!\n");

    lock_release(&t->vm_thread_lock);

    return true;
}


