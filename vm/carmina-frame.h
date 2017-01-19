/*
 * carmina-frame.h
 *
 *  Created on: Jan 19, 2017
 *      Author: carmina
 */

#include "lib/stdint.h"
#include "threads/synch.h"
#include "lib/kernel/list.h"

#ifndef VM_CARMINA_FRAME_H_
#define VM_CARMINA_FRAME_H_

struct user_page_handle {
	struct list_elem elem;
	struct thread *th; //the thread which uses the page
	void *vaddr; //virtual address used
};

struct list user_page_list;
struct lock user_page_list_lock;


void user_page_list_alloc(void);
void user_page_list_free(void);

void handle_swap_load(uint32_t *pte, uint32_t *sup_pte);
void handle_swap_evict(uint32_t *pte, uint32_t *sup_pte);
void *find_evict_victim(void);



#endif /* VM_CARMINA_FRAME_H_ */
