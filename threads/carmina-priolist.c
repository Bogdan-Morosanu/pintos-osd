/*
 * carmina-priolist.c
 *
 *  Created on: Nov 5, 2016
 *      Author: carmina
 */

#include "carmina-priolist.h"

struct list ready_list_prio[PRI_MAX+1];

/**
 * Initializes the lists in the array
 */
void ready_list_prio_init(void){
	int i;
    for (i=0; i< PRI_MAX +1; i++){
        list_init(&ready_list_prio[i]);
    }
}

/*
 * Inserts a thread into its corresponding list depending on its priority
 * The thread is put at the back of the list
 */
void ready_list_insert(struct thread *t){
	ASSERT((t->priority >= PRI_MIN) && (t->priority <= PRI_MAX));
	list_push_back(&ready_list_prio[t->priority], &t->elem);
}

/*
 *  Pops from the first non empty list corresponding to the highest priority
 *  the first thread
 */
struct thread *next_thread_to_run(){
	int i;
	for (i = PRI_MAX; i >= PRI_MIN; i--){
		if (!list_empty(&ready_list_prio[i])){
			return list_entry (list_pop_front (&ready_list_prio[i]), struct thread, elem);
		}
	}
	return idle_thread;
}

/**
 * Compares two threads based on their priority
 * Returns true if the first thread has lower priority
 */
bool prio_cmp(const struct list_elem *a,
              const struct list_elem *b,
              void *aux UNUSED) {

	struct thread *t_a = list_entry (a, struct thread, elem);
	struct thread *t_b = list_entry (b, struct thread, elem);

	return t_a->priority < t_b->priority;
}

/**
 * Finds in a list the highest priority thread
 * If more threads with same priority exist, the first one is returned
 */
struct thread *highest_prio_waiter(struct list *l){
	struct list_elem *e = list_max(l, prio_cmp, NULL);
	list_remove(e);
	return list_entry(e,struct thread, elem);
}

void ready_list_push_back(struct thread *t){
	list_push_back(&ready_list_prio[t->priority], &t->elem);
}




