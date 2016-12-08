#ifndef CARMINA_SYSCALLSFILES_H
#define CARMINA_SYSCALLSFILES_H

#include <filesys/file.h>
#include <lib/kernel/list.h>
#include "commons-process.h"

#define MAX_FILE_NAME 14
#define MAX_NO_OPENED_FILES 32

struct user_file{
	struct list_elem elem;
	int fd; //file descriptor
	struct file *f;
};

#endif // carmina-syscallsfiles.h

int handle_open(const char *name);


