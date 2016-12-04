/*
 * carmina-syscallsfiles.c
 *
 *  Created on: Dec 4, 2016
 *      Author: carmina
 */

#include "carmina-syscalls-files.h"
#include <threads/thread.h>

#include "moro-syscalls-process.h"
#include "moro-validate.h"

#include <lib/stdlib.h>

/// stub TODO delete me
int validate_read_string(const char *str)
{

}

/// stub TODO delete me
void exit_handler(int ret_sts)
{

}

int handle_open(const char *name)
{
	if(!validate_read_string(name)){
		exit_handler(EXIT_FAILURE);
	}

	struct file *result = filesys_open(name);
	if (result == NULL){
		return -1;
	}

	struct user_file *new_file = malloc(sizeof(*new_file));
	struct proc_desc *current_dsc = thread_current()->pd;

	new_file->f = result;
	new_file->fd = current_dsc->next_file_id++;
	list_push_back (&current_dsc->opened_files, &new_file->elem);

	return new_file->fd;

}




