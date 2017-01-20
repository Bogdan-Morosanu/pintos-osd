/*
 * common-vm.c
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */

#include <stdlib.h>
#include <stdio.h>

#include "common-vm.h"
#include "moro-mmap.h"
#include "moro-lazy-loaded.h"
#include "carmina-frame.h"

#include "userprog/pagedir.h"

#include "threads/pte.h"
#include "threads/vaddr.h"


#define PGELEMS (PGSIZE / (sizeof(uint32_t)))

/// loads page from faulting address * addr , by delegating
/// to suitable load function for all three cases .
void load_page(void *addr)
{
    struct thread *t = thread_current();
    if (t != t->vm_thread_lock.holder) {
        lock_acquire(&t->vm_thread_lock);
    }

    // our handle swaps require our address to be page-aligned
    addr = pg_round_down(addr);
    uint32_t *pte = lookup_page(t->pagedir, addr, false);

    if (IS_LAZY_LOADED(*pte)) {
        handle_lazy_load(t, addr);

    } else if (IS_SWAPPED(*pte)) {
        handle_swap_load(t, addr);

    } else if (IS_MMAPPED(*pte)) {
        handle_mmap_load(t, addr);

    }

    lock_release(&t->vm_thread_lock);
}

/// evicts page at addr , by dispatching to suitable eviction
/// function for all three cases .
/// called when allocating pages and sometimes in
/// handle_swap_reload when no more RAM is left .
void evict_page(void *addr)
{
    struct thread *t = thread_current();
    if (t != t->vm_thread_lock.holder) {
        lock_acquire(&t->vm_thread_lock);
    }

    // our handle swaps require our address to be page-aligned
    addr = pg_round_down(addr);
    uint32_t *pte = lookup_page(t->pagedir, addr, false);


    if (IS_LAZY_LOADED(*pte)) {
        handle_lazy_load_evict(t, addr);

    } else if (IS_SWAPPED(*pte)) {
        handle_swap_evict(t, addr);

    } else if (IS_MMAPPED(*pte)) {
        handle_mmap_evict(t, addr);

    }

    lock_release(&t->vm_thread_lock);
}


void
pte_forall(uint32_t *pd , int user_only, void (*foo)(uint32_t *))
{
    if (NULL == pd) {
        printf("[WARNING] calling pte_forall on null pde!\n");
        return;
    }

    uint32_t *pde;
    uint32_t limit = (user_only) ? pd_no(PHYS_BASE) : PGSIZE;
    for (pde = pd; pde < pd + limit; pde++) {
        if (*pde & PTE_P) {

            uint32_t *pt = pde_get_pt(*pde);

            uint32_t *pte;
            for (pte = pt; pte < pt + PGELEMS; pte++) {
                if (*pte & PTE_P) {
                    foo(pte);
                }
            }
        }
    }
}


