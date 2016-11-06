/*
 * moro-donation.h
 *
 *  Created on: Nov 6, 2016
 *      Author: moro
 */

#ifndef SRC_THREADS_MORO_DONATION_H_
#define SRC_THREADS_MORO_DONATION_H_

#include "synch.h"
#include "thread.h"

/*
 * Struct holds history of a single priority donation.
 */
struct prio_donated {

    struct list_elem elem;

    struct lock *where;

    struct thread *who;

    int prio;
};

/*
 * Do all necessary book-keeping for priority donation
 * on lock *l inside lock_acquire. Lock must have holder.
 *
 * @pre NULL != l->holder
 */
void prio_donate(struct lock *l);

/*
 * Do all necessary book-keeping for priority donation on
 * lock *l inside lock_release.
 */
void prio_rollback(struct lock *l);


/*
 * Updates priority of *t to be the max priority in
 * priority donation history list. Must be called after
 * changing t->original_prio or t->prio_history
 */
void prio_update(struct thread *t);


#endif /* SRC_THREADS_MORO_DONATION_H_ */
