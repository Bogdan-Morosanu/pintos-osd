/*
 * common-vm.c
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */

#include <stdlib.h>
#include <stdio.h>

#include "common-vm.h"

#include "userprog/pagedir.h"
#include "threads/pte.h"
#include "threads/vaddr.h"

#define PGELEMS (PGSIZE / (sizeof(uint32_t)))

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


