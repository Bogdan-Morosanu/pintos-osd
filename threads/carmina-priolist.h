/*
 * Functionalities for managing the priority list used for priority scheduler
 */

#include "thread.h"

/*
 * Array of lists containing the processes in THREAD_READY state
 * Each list contains only processes with priority equal
 * to the lists index in the array
 */
extern struct list ready_list_prio[PRI_MAX+1];

void ready_list_prio_init(void);

void ready_list_insert(struct thread *t);

void ready_list_push_back(struct thread *t);

struct thread *next_thread_to_run(void);

struct thread *highest_prio_waiter(struct list *l);


