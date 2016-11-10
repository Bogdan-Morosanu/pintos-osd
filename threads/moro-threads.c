/*
 * moro-threads.c
 *
 *  Created on: Oct 24, 2016
 *      Author: moro
 */

#include "moro-threads.h"
#include <stdio.h>

static struct semaphore sleep_sema = SEMAPHORE_INITIALIZER(sleep_sema, 0);
static struct list sleep_ls = LIST_INITIALIZER(sleep_ls);
static struct lock sleep_lock = LOCK_INITIALIZER(sleep_lock);

void
thread_register_sleep(int64_t ticks)
{
    if (ticks < 1) return;
    // TODO implement lock for modifying sleep ls !!

    enum intr_level old_level = intr_disable();

    thread_current()->wakeup_time = ticks + timer_ticks();

    lock_acquire(&sleep_lock);
    list_push_back(&sleep_ls, &thread_current()->sleep_elem);
    lock_release(&sleep_lock);

    thread_block();
    intr_set_level(old_level);
}

void
thread_wake(void *arg UNUSED)
{
    for (;;) {
        sema_down(&sleep_sema);

        int64_t cnt_ticks = timer_ticks();
        struct list_elem *e = NULL;

        lock_acquire(&sleep_lock);
        for (e = list_begin(&sleep_ls); e != list_end(&sleep_ls); e = list_next(e) ) {
            struct thread *t = list_entry(e, struct thread, sleep_elem);
            if (t->wakeup_time <= cnt_ticks) {
                list_remove(e);
                thread_unblock(t);
            }
        }
        lock_release(&sleep_lock);

    }
}

void
thread_register_wake()
{
    sema_up(&sleep_sema);
}
