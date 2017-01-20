/*
 * moro-mmap.c
 *
 *  Created on: Jan 20, 2017
 *      Author: moro
 */

#include "moro-mmap.h"

#include "threads/thread.h"

void
handle_mmap_load(struct thread *t, void *v_addr)
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
handle_mmap_evict(struct thread *t, void *v_addr)
{

}

void
cleanup_mmap(struct paged_file_handle *mfh)
{

}
