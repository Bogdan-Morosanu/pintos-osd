/*
 * carmina-priolist.c
 *
 *  Created on: Nov 5, 2016
 *      Author: carmina
 */

#include "carmina-priolist.h"

/**
 * Initializes the lists in the array
 */
void ready_list_prio_init(void){
    for (int i=0; i< PRI_MAX +1; i++){
        list_init(&ready_list_prio[i]);
    }
}

/*
 * Inserts a thread into its corresponding list depending on its priority
 * The thread is put at the back of the list
 */
void ready_list_insert(struct thread *t){

}

/*
 *  Pops from the first non empty list corresponding to the highest priority
 *  the first thread
 */
struct thread *next_thread_to_run(){

}

/**
 * Finds in a list the highest priority thread
 * If more threads with same priority exist, the first one is returned
 */
struct thread *highest_prio_waiter(struct list *l){

}





