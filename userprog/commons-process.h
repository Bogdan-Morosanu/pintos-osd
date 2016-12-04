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


struct proc_desc {

	struct list_elem elem; 			// used for creating a list of proc_dsc

	enum proc_state state;				// current state

	const char *file; 				// path to elf being executed

	struct list child_processes;	// list of processes created by this one

	struct condition wait_bcast;	//condition variable for processes waiting on this one

	struct lock wait_bcast_lock;	//lock for the condition variable above

	int ret_sts; 					//return status; invalid if state != PROCESS_ZOMBIE

	struct semaphore wait_create;	//used for wait create

	struct proc_dsc *parent;		//pointer to parent

	struct list opened_files;		//has the functionality of a file descriptor table

	int next_file_id;				//keeps the next file descriptor that is available


};

#endif
