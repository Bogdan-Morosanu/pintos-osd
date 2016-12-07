#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include <lib/stdbool.h>

static void syscall_handler (struct intr_frame *);

void
syscall_init (void) 
{
  intr_register_int (0x30, 3, INTR_ON, syscall_handler, "syscall");
}

static void
syscall_handler (struct intr_frame *f)
{
  	int syscall_no = *((int*)f->esp);

	printf ("system call no %d!\n", syscall_no);


	switch (syscall_no) {
	    case SYS_EXEC:
            {
                char *cmd_line = *(char**)(((char*)f->esp) + sizeof(int));
                f->eax = process_execute(cmd_line);
            }
	        break;

		case SYS_EXIT:
			printf ("SYS_EXIT system call!\n");
			thread_exit();
			break;
		case SYS_WRITE:
			{
				int fd = *(int *)((char *)f->esp + sizeof(int));
				void *buf= *(void **)((char *)f->esp + 2*sizeof(int));
				unsigned size= *(unsigned *)((char *)f->esp + 2*sizeof(int) + sizeof(void *));
				int result= handle_write(fd, buf,size);
				f->eax=result;
			}
			break;
		case SYS_READ:
			{
				int fd = *(int *)((char *)f->esp + sizeof(int));
				void *buf= *(void **)((char *)f->esp + 2*sizeof(int));
				unsigned size= *(unsigned *)((char *)f->esp + 2*sizeof(int) + sizeof(void *));
				int result= handle_read(fd, buf,size);
				f->eax=result;
			}
			break;
		case SYS_OPEN:
		  	{
			  	char **addr = (char **)(((char*)f->esp) + sizeof(int));
				char *file_name = *addr;
				int fd = handle_open(file_name);
				f->eax = fd;
		  	}
			break;
		case SYS_CREATE:
			{
			  	char **addr = (char **)(((char*)f->esp) + sizeof(int));
				char *file_name = *addr;
				unsigned initial_size= *(unsigned *)((char *)f->esp + sizeof(char *));
				bool result = handle_create(file_name, initial_size);
				f->eax = result;
			}
			break;
		case SYS_SEEK:
			{
				int fd = *(int *)((char *)f->esp + sizeof(int));
				int pos = *(int *)((char *)f->esp + 2*sizeof(int));
				int result = handle_seek(fd, pos);
			}
			break;
		case SYS_TELL:
			{
				int fd = *(int *)((char *)f->esp + sizeof(int));
				int res = handle_tell(fd);
				f->eax=res;
			}
			break;
		case SYS_CLOSE:
			{
				int fd = *(int *)((char *)f->esp + sizeof(int));
				int result = handle_close(fd);
				f->eax = result;
			}
			break;
		}

	thread_exit ();
}
