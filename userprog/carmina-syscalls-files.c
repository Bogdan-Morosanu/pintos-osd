
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
#include <lib/stdbool.h>


/**
 * Predicate used for finding in a list of files the one with
 * fd equal to the one given
 * @param a represents the struct list_elem in the user_file struct
 * @param aux is used for passing the value of the fd to be searched for
 */
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
	if (strlen(name) > MAX_FILE_NAME){
		return -1;
	}
	if (!validate_read_string(name)) {
		exit_handler(EXIT_FAILURE);
	}
	struct proc_desc *current_dsc = thread_current()->pd;
	if (current_dsc->next_file_id > MAX_NO_OPENED_FILES){
		return -1;
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
	new_file->f = result;
	new_file->fd = current_dsc->next_file_id++;
	list_push_back (&current_dsc->opened_files, &new_file->elem);
	return new_file->fd;
}

/**
 * Function used for handling the close system call
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

/**
 * Function used for handling the seek system call
 * @param fd represents the file dscriptor
 * @param pos represents the position
 */
int handle_seek(int fd, int pos){
	struct proc_desc *current_dsc = thread_current()->pd;
	struct list_elem *e = list_find(&current_dsc->opened_files, fd_pred, &fd);
		if (e != list_end(&current_dsc->opened_files)  && pos >=0){
			struct user_file *file_found = list_entry (e, struct user_file, elem);
			//call seek on the file
			//protect file
			sema_down(&fs_sema);
			printf("\nCalling syscall seek\n");
			file_seek(file_found->f, pos);
			sema_up(&fs_sema);
			return 0;
		}
		else
		{
			//file descriptor not found
			printf("\nNot ok seek\n");
			printf("\nPos %d\n", pos);
			printf("\nFd %d\n", fd);
			return -1;
		}
}

/**
 * Function tell used for telling the current position in a file
 * @param fd represents the file descriptor
 */
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

/**
 * Function used for handling the write system call
 * @param fd represents the file descriptor
 * @param buf represents the buffer from where to get the data
 * to be written
 * @param size represents the size of the buffer
 */
int handle_write(int fd,char *buf,unsigned size){

    printf("%s calling write on fd %d.\n", thread_current()->pd->cmd_line, fd);

    //verify if STDOUT
    if (fd == STDOUT_FILENO) {
		sema_down(&fs_sema);
		putbuf(buf,size);
		sema_up(&fs_sema);
		return size;
	}

	if (fd == STDIN_FILENO ) {
		return -1;
	}

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

/**
 * Function used for handling the read system call
 * @param fd represents the file descriptor
 * @param buf represents the buffer in which to write the read data
 * @param size represents the size in bytes to be read
 */
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

/**
 * Function used for handling the create system call
 * @param file_name represents the name of the file
 * @param initial_size represents the initial size of the file
 */
bool handle_create(char *file_name, unsigned initial_size){
	if (strlen(file_name) > MAX_FILE_NAME){
			return false;
		}
	sema_down(&fs_sema);
	bool result = filesys_create(file_name, initial_size);
	sema_up(&fs_sema);
	return result;
}
