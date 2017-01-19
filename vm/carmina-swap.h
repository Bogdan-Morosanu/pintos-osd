/*
 * carmina-swap.h
 *
 *  Created on: Jan 19, 2017
 *      Author: carmina
 */

#ifndef VM_CARMINA_SWAP_H_
#define VM_CARMINA_SWAP_H_

#include "devices/block.h"
#include "threads/vaddr.h"
#include <bitmap.h>

#define SWAP_SECTORS_PER_PAGE (PGSIZE / BLOCK_SECTOR_SIZE)

#define SWAP_FREE 0      //0 in the bitmap => position is free
#define SWAP_USED 1      //1 in the bitmap => position is in use

extern struct bitmap *swap_table;
extern struct block *swap_block;

void swap_alloc(void);
void swap_uninit(void);

void swap_in(size_t bitmap_idx, void *frame_addr);
size_t swap_out(void *frame_addr);


#endif /* VM_CARMINA_SWAP_H_ */
