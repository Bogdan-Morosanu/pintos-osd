#ifndef COMMONS_PROCESS_H
#define COMMONS_PROCESS_H

#include <filesys/file.h>
#include <lib/kernel/list.h>
#include <threads/synch.h>

enum proc_state {

	PROCESS_RUNNING, 	// process still running

	PROCESS_ZOMBIE		// process returned but nobody
						// called wait on it
};

// pre-declare thread (we need it for pointer in next struct)
struct thread;

// expose tid_t
typedef int tid_t;

struct proc_desc {

	struct list_elem elem; 			// used for creating a list of proc_dsc

	enum proc_state state;		    // current state

	const char *cmd_line; 		    // command line string passed to exec

	struct list child_processes;	// list of processes created by this one

	struct condition wait_bcast;	// condition variable for processes waiting on this one

	struct lock wait_bcast_lock;	// lock for the condition variable above

	int ret_sts; 					// return status; invalid if state != PROCESS_ZOMBIE

	struct semaphore wait_create;	// used for wait create

	tid_t proc_id;           // process thread id (user sees proc_id as a pid_t)

	struct thread *parent;		    // pointer to parent thread

	struct list opened_files;		// has the functionality of a file descriptor table

	int next_file_id;				// keeps the next file descriptor that is available

};

/// @brief returns new process descriptor with parent set as
///        current thread, based on command line passed in.
struct proc_desc *
new_proc_desc(const char *command_line);

/// @brief simply frees all malloc memory owned by pd,
///        (does not do any other extra book-keeping).
void free_proc_desc(struct proc_desc *pd);

#endif
