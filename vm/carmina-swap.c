/*
 * carmina-swap.c
 *
 *  Created on: Jan 19, 2017
 *      Author: carmina
 */
#include "carmina-swap.h"
#include <stdio.h>

/**
 * Bitmap used for keeping track of the
 * used and unused sectors of the swap block
 */
struct bitmap * swap_table;y
/**
 * The swap block
 */
struct block  * swap_block;

/**
 * Create the initial swap table
 */
void swap_table_alloc(void)
{
	block_sector_t swap_number_of_sectors = 0;
	swap_block = block_get_role(BLOCK_SWAP);
	if(NULL == swap_block)
	{
		PANIC("Unable to get the swap block!");
	}

	swap_number_of_sectors = block_size(swap_block);

	/**
	 * Initialize the swap table to represent the free spaces for one page
	 * It is enough h to keep bitmap for page size chucks, since a whole page is
	 * swapped out
	 */
	swap_table = bitmap_create( swap_number_of_sectors / SWAP_SECTORS_PER_PAGE);
	if(NULL == swap_table)
	{
		PANIC("Unable to initialize swap table!");
	}

	bitmap_set_all(swap_table, SWAP_FREE);
}

/**
 * Destroy the swap table
 */
void swap_table_free(void)
{
	bitmap_destroy(swap_table);
}

/**
 * Read from a starting sector BITMAP_IDX a frame
 */
void swap_in(size_t bitmap_idx, void *frame_addr)
{
	unsigned int i;

	ASSERT(NULL != swap_table);
	ASSERT(NULL != swap_block);
	ASSERT(bitmap_test(swap_table, bitmap_idx) == SWAP_USED);

	for(i=0; i < SWAP_SECTORS_PER_PAGE; i++){
		block_read(swap_block,bitmap_idx+i,frame_addr+BLOCK_SECTOR_SIZE);
	}
}

/**
 * Write a frame into the swap block. Returns the starting index
 * in swap block
 */
size_t swap_out(void *frame_addr)
{
	unsigned int i;
	size_t free_idx = 0;

	ASSERT(NULL != swap_table);
	ASSERT(NULL != swap_block);

	// find a free index in the swap table
	free_idx = bitmap_scan_and_flip(swap_table,0,1,SWAP_FREE);
	ASSERT(free_idx != BITMAP_ERROR);

	// swap out the frame to the swap space
	for(i=0; i < SWAP_SECTORS_PER_PAGE; i++){
		block_write(swap_block,free_idx+i,frame_addr+BLOCK_SECTOR_SIZE);
	}

	return free_idx;
}


