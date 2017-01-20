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
    *pte = *pte && ~PTE_P;

    lock_release(&t->vm_thread_lock);

}

void
cleanup_lazy_load(struct paged_file_handle * pfh)
{
    free (pfh);
}



