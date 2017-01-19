/*
 * carmina-frame.c
 *
 *  Created on: Jan 19, 2017
 *      Author: carmina
 */

#include "carmina-frame.h"
#include <stdio.h>
#include "threads/synch.h"
#include "lib/kernel/list.h"

void user_page_list_alloc(void)
{
	list_init(&user_page_list);
	lock_init(&user_page_list_lock);
}

void user_page_list_free(void)
{

}

void handle_swap_load(uint32_t *pte, uint32_t *sup_pte)
{

}

void handle_swap_evict(uint32_t *pte, uint32_t *sup_pte)
{

}

void *find_evict_victim(void)
{

}




