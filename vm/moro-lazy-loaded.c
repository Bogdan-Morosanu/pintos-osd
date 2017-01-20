/*
 * moro-lazy-loaded.c
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */


#include <stdbool.h>
#include <stdlib.h>

#include "moro-lazy-loaded.h"
#include "lib/debug.h"

#include "threads/vaddr.h"
#include "threads/pte.h"
#include "threads/palloc.h"
#include "threads/thread.h"

#include "userprog/pagedir.h"

#include "lib/kernel/list.h"

#include "common-vm.h"
#include "common-supp-pd.h"

void free (void *);

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
static bool
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

void
handle_lazy_load(struct thread *t, void *v_addr)
{
    if (thread_current() != t->vm_thread_lock.holder) {
        lock_acquire(&t->vm_thread_lock);
    }

    struct paged_file_handle *pfh =
            *(struct paged_file_handle **)sup_page_dir_get(t->sup_pagedir, v_addr);


    actually_load_segment(pfh->f, pfh->ofs, pfh->upage,
                          pfh->read_bytes, pfh->zero_bytes,
                          pfh->writable);

    lock_release(&t->vm_thread_lock);

}

void
handle_lazy_load_evict(struct thread *t, void *v_addr)
{
    if (thread_current() != t->vm_thread_lock.holder) {
        lock_acquire(&t->vm_thread_lock);
    }

    uint32_t *pte = lookup_page(t->pagedir, v_addr, false);
    ASSERT (pte);
    palloc_free_page(v_addr);
    *pte = *pte && !PTE_P;

    lock_release(&t->vm_thread_lock);

}

void
cleanup_lazy_load(struct paged_file_handle * pfh)
{
    free (pfh);
}



