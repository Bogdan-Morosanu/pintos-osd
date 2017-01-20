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
        if (kpage == NULL)
            return false;

        /* Load this page. */
        if (file_read (file, kpage, page_read_bytes) != (int) page_read_bytes)
        {
            palloc_free_page (kpage);
            return false;
        }
        memset (kpage + page_read_bytes, 0, page_zero_bytes);

        /* Add the page to the process's address space. */
        if (!install_page (upage, kpage, writable))
        {
            palloc_free_page (kpage);
            return false;
        }

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

    // mark page lazy loaded
    uint32_t *pte = lookup_page(t->pagedir, upage);
    *pte = *pte & ~PAGE_LAZY_LOADED;

    // populate supplemental page dir
    sup_page_dir_set(upage, pfh);

    // populate paged_file_segments list
    list_push_back(&proc_d->paged_file_segments, &pfh->elem);

    lock_release(&t->vm_thread_lock);

    return true;
}


