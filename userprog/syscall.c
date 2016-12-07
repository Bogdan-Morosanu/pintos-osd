#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include "threads/interrupt.h"
#include "threads/thread.h"

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
			printf ("SYS_WRITE system call!\n");
			f->eax=0;
			break;
		case SYS_READ:
			printf ("SYS_READ system call!\n");
			break;
		case SYS_OPEN:
		  {
			char **addr = (char **)(((char*)f->esp) + sizeof(int));
			char *file_name = *addr;
			int fd = handle_open(file_name);
			f->eax = fd;
		  }
			break;
		case SYS_SEEK:
			break;
		case SYS_TELL:
			break;
		case SYS_CLOSE:
			break;
		}

	thread_exit ();
}
