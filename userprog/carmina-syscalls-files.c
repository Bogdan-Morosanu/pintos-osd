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
#include <lib/kernel/list.h>
#include <lib/stdio.h>


static bool fd_pred(const struct list_elem *a, void *aux){
	int fd_find = * (int *) aux;
	struct user_file *file =  list_entry (a, struct user_file, elem);
	if (file->fd == fd_find)
	{
		return true;
	}
	else
	{
		return false;
	}
}

/**Function used for handling the open system call
 * @param name represents the file name
 */
int handle_open(const char *name)
{
	if (!validate_read_string(name)) {
		exit_handler(EXIT_FAILURE);
	}

	//protect filesys
	sema_down(&fs_sema);
	struct file *result = filesys_open(name);
	//protect filesys
	sema_up(&fs_sema);
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

/**
 * Function used for handlng the close system call
 * @param fd represents the file descriptor
 */
int handle_close(int fd){

	struct proc_desc *current_dsc = thread_current()->pd;
	struct list_elem *e = list_find(&current_dsc->opened_files, fd_pred, &fd);
	if (e != list_end(&current_dsc->opened_files) && fd!=0 && fd!=1){
		struct user_file *file_found = list_entry (e, struct user_file, elem);
		//call close on the file
		//protect file
		sema_down(&fs_sema);
		file_close(file_found->f);
		sema_up(&fs_sema);
		list_remove(e);
		return 0;
	}
	else
	{
		//file descriptor not found
		return -1;
	}
}

int handle_seek(int fd, int pos){
	struct proc_desc *current_dsc = thread_current()->pd;
	struct list_elem *e = list_find(&current_dsc->opened_files, fd_pred, &fd);
		if (e != list_end(&current_dsc->opened_files)  && pos >=0){
			struct user_file *file_found = list_entry (e, struct user_file, elem);
			//call seek on the file
			//protect file
			sema_down(&fs_sema);
			file_seek(file_found->f, pos);
			sema_up(&fs_sema);
			return 0;
		}
		else
		{
			//file descriptor not found
			return -1;
		}
}

int handle_tell(int fd){
	struct proc_desc *current_dsc = thread_current()->pd;
	struct list_elem *e = list_find(&current_dsc->opened_files, fd_pred, &fd);
	if (e != list_end(&current_dsc->opened_files)){
		struct user_file *file_found = list_entry (e, struct user_file, elem);
		//call tell on the file
		//protect file
		sema_down(&fs_sema);
		int result = file_tell(file_found->f);
		sema_up(&fs_sema);
		return result;
	}
	else
	{
		//file descriptor not found
		return -1;
	}
}

int handle_write(int fd,char *buf,unsigned size){
	//verify if STDOUT
	if(fd == STDOUT_FILENO)
		putbuf(buf,size);
	if (fd == STDIN_FILENO )
		return -1;
	struct proc_desc *current_dsc = thread_current()->pd;
	struct list_elem *e = list_find(&current_dsc->opened_files, fd_pred, &fd);
	if (e != list_end(&current_dsc->opened_files)){
		struct user_file *file_found = list_entry (e, struct user_file, elem);
		//call write on the file
		//protect file
		sema_down(&fs_sema);
		int result = file_write(file_found->f, buf, size);
		sema_up(&fs_sema);
		return result;
	}
	else
	{
		//file descriptor not found
		return -1;
	}
}

int handle_read(int fd, char *buf, unsigned size){
	struct proc_desc *current_dsc = thread_current()->pd;
	struct list_elem *e = list_find(&current_dsc->opened_files, fd_pred, &fd);
	if (e != list_end(&current_dsc->opened_files)){
		struct user_file *file_found = list_entry (e, struct user_file, elem);
		//call read on the file
		//protect file
		sema_down(&fs_sema);
		int result = file_read(file_found->f, buf, size);
		sema_up(&fs_sema);
		return result;
	}
	else
	{
		//file descriptor not found
		return -1;
	}
}






