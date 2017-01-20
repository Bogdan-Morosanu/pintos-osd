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
#include "userprog/commons-process.h"

#include "lib/kernel/list.h"

#include "common-vm.h"
#include "common-supp-pd.h"
#include "filesys/filesys.h"

void free (void *);

void
handle_lazy_load(struct thread *t, void *v_addr)
{
    ASSERT(thread_current() == t->vm_thread_lock.holder);

    struct paged_file_handle *pfh =
            *(struct paged_file_handle **)sup_page_dir_get(t, v_addr);


    actually_load_segment(pfh->f, pfh->ofs, pfh->upage,
                          pfh->read_bytes, pfh->zero_bytes,
                          pfh->writable);

    uint32_t *pte = lookup_page(t->pagedir, v_addr, false);
    printf("pte : %p\n", pte);
    *pte = *pte | PTE_U | PTE_P | PTE_W; //pte_create_user(v_addr, false); // not readable for lazy loaded pages

    printf("load returned!!\n");
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
cleanup_lazy_load(struct thread *t)
{
    lock_acquire(&t->vm_thread_lock);

    struct list_elem *e;
    struct list *pfs = &t->pd->paged_file_segments;
    int removed = 0;
    for (e = list_begin(pfs); e != list_end(pfs); e = (removed) ? e : list_next(e)) {

        struct paged_file_handle *pfh = list_entry(e, struct paged_file_handle, elem);

        if (PAGED_ELF == pfh->type) {
            removed = 1;

            struct list_elem *e_nxt = list_next(e);
            list_remove(e);
            e = e_nxt;

            free (pfh);
        } else {
            removed = 0;
        }
    }

    lock_release(&t->vm_thread_lock);
}



