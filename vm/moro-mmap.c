/*
 * moro-mmap.c
 *
 *  Created on: Jan 20, 2017
 *      Author: moro
 */

#include "moro-mmap.h"

#include "threads/thread.h"
#include "threads/vaddr.h"

#include "filesys/filesys.h"

#include "devices/block.h"

#include "userprog/commons-process.h"

#ifdef SWAP_SECTORS_PER_PAGE
#undef SWAP_SECTORS_PER_PAGE
#endif
#define SWAP_SECTORS_PER_PAGE (PGSIZE / BLOCK_SECTOR_SIZE)

/// @pre fs_sema acquired
void
setup_mmap(struct file *f, void *v_addr)
{
    uint32_t f_size = file_length(f);
    uint32_t pages = f_size / PGSIZE;

    int i = 0;
    for (; i < pages; ++i) {
        struct paged_file_handle *pfh = malloc(sizeof *pfh);
        pfh->f = f;
        pfh->type = PAGED_MMAP;
        pfh->ofs = i * PGSIZE;
        pfh->read_bytes = PGSIZE;
        pfh->zero_bytes = 0;
        pfh->upage = v_addr;
    }

    uint32_t rem = f_size % PGSIZE;
    if (rem != 0) {

    }
}

void
handle_mmap_load(struct thread *t, void *v_addr)
{

    sema_down(&fs_sema);
    if (thread_current() != t->vm_thread_lock.holder) {
        lock_acquire(&t->vm_thread_lock);
    }

    struct paged_file_handle *pfh = sup_page_dir_get(t, v_addr);


    actually_load_segment(pfh->f, pfh->ofs, pfh->upage,
                          pfh->read_bytes, pfh->zero_bytes,
                          pfh->writable);

    lock_release(&t->vm_thread_lock);
    sema_up(&fs_sema);
}

void
handle_mmap_evict(struct thread *t, void *v_addr)
{

}

void
cleanup_mmap(struct thread *t)
{
    sema_down(&fs_sema);
    lock_acquire(&t->vm_thread_lock);

    struct list_elem *e;
    struct list *pfs = &t->pd->paged_file_segments;
    int removed = 0;

    for (e = list_begin(pfs); e != list_end(pfs); e = (removed) ? e : list_next(e)) {

        struct paged_file_handle *pfh = list_entry(e, struct paged_file_handle, elem);

        if (PAGED_MMAP == pfh->type) {
            removed = 1;

            struct list_elem *e_nxt = list_next(e);
            list_remove(e);
            e = e_nxt;

            file_write_at (pfh->f, pfh->upage, pfh->read_bytes, pfh->ofs);
            free (pfh);

        } else {
            removed = 0;
        }
    }

    lock_release(&t->vm_thread_lock);
    sema_up(&fs_sema);
}
