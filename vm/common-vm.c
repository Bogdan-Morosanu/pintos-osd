/*
 * common-vm.c
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */

#include <stdlib.h>

#include "common-vm.h"

#include "userprog/pagedir.h"
#include "threads/pte.h"

void
pte_forall(void *pd , void (*foo)(uint32_t * pte))
{
    if (NULL == pd) {
        printf("[WARNING] calling pte_forall on null pde!\n");
        return;
    }

    uint32_t *pde;
    for (pde = pd; pde < pd + pd_no (PHYS_BASE); pde++) {
        if (*pde & PTE_P) {

            uint32_t *pt = pde_get_pt(*pde);

            uint32_t *pte;
            for (pte = pt; pte < pt + PGSIZE / sizeof *pte; pte++) {
                if (*pte & PTE_P) {
                    foo(pte);
                }
            }
        }
    }
}


