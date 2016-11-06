/*
 * moro-donation.c
 *
 *  Created on: Nov 6, 2016
 *      Author: moro
 */

#include "moro-donation.h"
#include "malloc.h"

void
prio_update(struct thread *t)
{
    struct list_elem *e;
    struct list *prio_hist = &(t->prio_history);

    int prio_max = t->original_prio;
    for (e = list_begin(prio_hist); e != list_end(prio_hist); e = list_next(e)) {

        struct prio_donated *pd = list_entry(e, struct prio_donated, elem);
        prio_max = (pd->prio > prio_max) ? pd->prio : prio_max;
    }

    t->priority = prio_max;
}

/* handles nested donation up to 10 levels of recursion */
static void
prio_donate_recursive(struct lock *l, int lvl);

void
prio_donate(struct lock *l)
{
    ASSERT(NULL != l);
    ASSERT(NULL != l->holder);

    struct prio_donated *h = malloc(sizeof(*h)); // memory released in prio_rollback
    struct thread *cnt = thread_current();
    h->prio = cnt->priority;
    h->where = l;
    h->who = cnt;

    list_push_back(&(l->holder->prio_history), &(h->elem));
    prio_update(l->holder);

    struct lock *nxt_lock = l->holder->wait_on;
    if (NULL != nxt_lock) {
        prio_donate_recursive(nxt_lock, 0);
    }
}

/* handles nested donation up to 10 levels of recursion */
static void
prio_donate_recursive(struct lock *l, int lvl)
{
    if ((NULL == l->holder) || (lvl > 9)) {
        return;
    }

    struct prio_donated *h = malloc(sizeof(*h)); // memory released in prio_rollback
    struct thread *cnt = thread_current();
    h->prio = cnt->priority;
    h->where = l;
    h->who = cnt;

    list_push_back(&(l->holder->prio_history), &(h->elem));
    prio_update(l->holder);

    struct lock *nxt_lock = l->holder->wait_on;
    if (NULL != nxt_lock) {
        prio_donate_recursive(nxt_lock, lvl + 1);
    }
}

void
prio_rollback(struct lock *l)
{
    ASSERT(NULL != l);

    struct thread *cnt_th = thread_current();
    struct list *prio_hist = &(cnt_th->prio_history);

    struct list_elem *e;
    int incr = 0; // true if the inner logic increments the loop iterator
    int found_change = 0; // true if priority needs to be updated
    for (e = list_begin(prio_hist);
         e != list_end(prio_hist);
         e = (incr) ? e : list_next(e)) {

        struct prio_donated *pd = list_entry(e, struct prio_donated, elem);

        if (pd->where == l) { // donation on this lock

            found_change = 1; // mark priority needs to be updated

            // prevent mutation of list_elem pointers
            // if we call list_remove before this, list_next won't work
            e = list_next(e);
            incr = 1; // mark increment happened

            list_remove(&(pd->elem));
            free(pd); // memory allocated in prio_donate and prio_donate_recursive

        } else {
            incr = 0; // mark increment did not happen
        }
    }

    if (found_change) {
        prio_update(cnt_th);
    }
}






















