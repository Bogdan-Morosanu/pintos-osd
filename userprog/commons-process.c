/*
 * commons-process.c
 *
 *  Created on: Dec 5, 2016
 *      Author: moro
 */

#include <debug.h>
#include <string.h>
#include <threads/malloc.h>
#include <threads/thread.h>

#include "commons-process.h"

struct proc_desc *
new_proc_desc(const char *command_line)
{
    struct proc_desc *pd = malloc(sizeof(*pd));
    ASSERT(NULL != pd);

    pd->elem.next = NULL;
    pd->elem.prev = NULL;

    pd->state = PROCESS_RUNNING;

    int sz = strlen(command_line) + 1; // +1 for null terminator
    pd->cmd_line = malloc(sz);
    ASSERT(NULL != pd->cmd_line);
    // cast away const for today :) because we are initialising the string
    strlcpy((char*)pd->cmd_line, command_line, sz);

    list_init(&pd->child_processes);

    cond_init(&pd->wait_bcast);
    lock_init(&pd->wait_bcast_lock);

    sema_init(&pd->wait_create, 0);

    pd->parent = thread_current();

    list_init(&pd->opened_files);
    pd->next_file_id = 2; // (leave room for STDIN and STDOUT, no STDERR in pintos)

    return pd;
}


void
free_proc_desc(struct proc_desc *pd)
{
    free((void*)pd->cmd_line);
    free(pd);
}














