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
#include "vm/common-supp-pd.h"
#include "userprog/pagedir.h"
#include "threads/synch.h"
#include "vm/carmina-swap.h"

#include "common-vm.h"

void user_page_list_alloc(void)
{
	list_init(&user_page_list);
	lock_init(&user_page_list_lock);
}

void user_page_list_free(void)
{

}

/**
 * Used for evicting a page
 * Delegates to corresponding eviction methods MAYBE?
 */
void evict_page (void * addr )
{



}

/**
 * Used for loading a page if it has been swapped out
 * or it must be read from a file
 * ADDR represents the virtual address in user space
 */
void load_page ( void * addr )
{

}

void handle_swap_load(struct thread *t ,void *vaddr)
{
	int segment_idx;
	segment_idx = sup_page_dir_get(t, vaddr); //segment where the page is stored
	lock_acquire(&swap_lock);
	swap_in(segment_idx, vaddr);
	lock_release(&swap_lock);
}

/**
 * vaddr is the user address of the page
 */
void handle_swap_evict(struct thread *t,void *vaddr)
{
	int segment_idx;

	lock_acquire(&swap_lock);
	segment_idx = swap_out(vaddr);
	lock_release(&swap_lock);

	//set present false, swapped out true and prepare spte

	uint32_t *pte = lookup_page (t->pagedir, vaddr, false);
	pte_set_swapped(pte);
	sup_page_dir_set(t, vaddr, segment_idx);
	pagedir_clear_page(t->pagedir,vaddr);

}

/**
 * Finds the user page to be evicted
 */
struct user_page_handle *find_evict_victim(void)
{
	struct list_elem *e;
	struct user_page_handle *chosen_page;
	int min;
	int value;
	min = 4;
	value =4;

	chosen_page = NULL;
	lock_acquire(&user_page_list_lock);
	for (e = list_begin (&user_page_list); e != list_end (&user_page_list);
			e = list_next (e))
	{
		struct user_page_handle *u = list_entry (e, struct user_page_handle, elem);
		if (pagedir_is_dirty(u->th->pagedir, u->vaddr))
		{
			if (pagedir_is_accessed(u->th->pagedir, u->vaddr))
			{
				value = 3;
			}
			else
			{
				value = 1;
			}
		}
		else
		{
			if (pagedir_is_accessed(u->th->pagedir, u->vaddr))
			{
				value = 2;
			}
			else
			{
				value =0;
			}
		}

		if (value < min)
		{
			min = value;
			chosen_page = u;
		}

	}
	list_remove(&chosen_page->elem);
	lock_release(&user_page_list_lock);


	return chosen_page;

}




