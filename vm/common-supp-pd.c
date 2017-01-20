/*
 * common-sup-pd.c
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */

#include "common-supp-pd.h"

#include "userprog/pagedir.h"

#include "threads/vaddr.h"
#include "threads/palloc.h"

#include "lib/debug.h"

/// sets up supplemental page table filled with info for kernel pages
/// pages.
uint32_t *sup_page_dir_alloc()
{
    uint32_t *p = palloc_get_page(PAL_ZERO);
    ASSERT(p);

    return p;
}

/// called in process exit , removes any remaining pages from
/// global user_page_list and frees memory .
void sup_page_dir_free(uint32_t * sup_pd)
{
    // TODO carmina : free pages in user page list
    pagedir_destroy(sup_pd);
}


void sup_page_dir_set(struct thread *t, void *v_addr, uint32_t val)
{
    ASSERT(t->pagedir && t->sup_pagedir);

    if (t->vm_thread_lock.holder != thread_current()) {
        lock_acquire(&t->vm_thread_lock);
    }

    // 3rd arg == true : map extra tables on set
    uint32_t *pte_addr = lookup_page(t->sup_pagedir, v_addr, true);
    *pte_addr = val;

    lock_release(&t->vm_thread_lock);
}

uint32_t sup_page_dir_get(struct thread *t, void *v_addr)
{
    ASSERT(t->pagedir && t->sup_pagedir);

    if (t->vm_thread_lock.holder != thread_current()) {
            lock_acquire(&t->vm_thread_lock);
    }

    // 3rd arg == false : do not map extra tables on get
    uint32_t *pte = lookup_page(t->sup_pagedir, v_addr, false);
    ASSERT("called sup_pd_get on unset value!" && pte);

    lock_release(&t->vm_thread_lock);

    return *pte;
}

