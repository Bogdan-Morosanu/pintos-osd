#ifndef USERPROG_PROCESS_H
#define USERPROG_PROCESS_H

#include "threads/thread.h"

#include "userprog/commons-process.h"

tid_t process_execute (const char *file_name);
int process_wait (tid_t);
void process_exit (int);
void process_activate (void);

bool install_page (void *upage, void *kpage, bool writable);


extern struct list GLOBAL_PROCESSES;

#endif /* userprog/process.h */
