#ifndef CARMINA_SYSCALLSFILES_H
#define CARMINA_SYSCALLSFILES_H

#include <filesys/file.h>
#include <filesys/filesys.h>
#include <lib/kernel/list.h>
#include "commons-process.h"

#define MAX_FILE_NAME 15
#define MAX_NO_OPENED_FILES 32

struct user_file{
	struct list_elem elem;
	int fd; //file descriptor
	struct file *f;
};

#endif // carmina-syscallsfiles.h

int handle_open(const char *name);
int handle_close(int fd);
int handle_seek(int fd, int pos);
int handle_tell(int fd);
int handle_write(int fd,char *buf,unsigned size);
int handle_read(int fd, char *buf, unsigned size);
bool handle_create(char *file_name, unsigned initial_size);

