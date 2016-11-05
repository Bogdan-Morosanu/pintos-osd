/*
 * moro-threads.h
 *
 *  Created on: Oct 24, 2016
 *      Author: moro
 */

#ifndef SRC_THREADS_MORO_THREADS_H_
#define SRC_THREADS_MORO_THREADS_H_

#include "synch.h"
#include "thread.h"
#include "interrupt.h"
#include <devices/timer.h>

void thread_register_sleep(int64_t ticks);

void thread_wake(void *arg UNUSED);

void thread_register_wake(void);


#endif /* SRC_THREADS_MORO_THREADS_H_ */
