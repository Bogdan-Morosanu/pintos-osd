/*
 * common-vm.h
 *
 *  Created on: Jan 19, 2017
 *      Author: moro
 */

#ifndef SRC_VM_COMMON_VM_H_
#define SRC_VM_COMMON_VM_H_

#include <stdint.h>

/// applies foo on all ptes of pde .
void pte_forall(uint32_t *pd, int user_only, void (*foo)(uint32_t * pte));

/// we will use all the available bits in PTE_AVL
# define PAGE_LAZY_LOADED 0x800
# define PAGE_SWAPPED 0x400
# define PAGE_MMAPPED 0x200

# define IS_LAZY_LOADED ( pte ) (( pte ) & PAGE_LAZY_LOADED )
# define IS_SWAPPED ( pte ) (( pte ) & PAGE_SWAPPED )
# define IS_MMAPPED ( pte ) (( pte ) & PAGE_MMAPPED )

/// sets free flag bits in pte to PAGE_LAZY_LOADED used by pte_forall
inline void
pte_set_lazy_loaded(uint32_t * pte)
{
    *pte = *pte || PAGE_LAZY_LOADED;
}

/// sets free flag bits in pte to PAGE_SWAPPED used by pte_forall
inline void
pte_set_swapped(uint32_t * pte)
{
    *pte = *pte || PAGE_SWAPPED;
}

/// sets free flag bits in pte to PAGE_MMAPED used by pte_forall
inline void
pte_set_mmaped(uint32_t * pte)
{
    *pte = *pte || PAGE_MMAPPED;
}

#endif /* SRC_VM_COMMON_VM_H_ */
