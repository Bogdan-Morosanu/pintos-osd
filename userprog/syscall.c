#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include "userprog/commons-process.h"
#include "userprog/carmina-syscalls-files.h"
#include "userprog/moro-syscalls-process.h"
#include "userprog/process.h"
#include "userprog/moro-parse-args.h"

static void syscall_handler (struct intr_frame *);

void
syscall_init (void) 
{
  intr_register_int (0x30, 3, INTR_ON, syscall_handler, "syscall");
}

struct write_args {
    unsigned size;
    void *buffer;
    int fd;
};

struct read_args {
    unsigned size;
    void *buffer;
    int fd;
};

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

  case SYS_WAIT:
    {
      // user process ids are just kernel thread ids
      tid_t pid = *(tid_t*)(((char*)f->esp) + sizeof(int));
      f->eax = process_wait(pid);
    }
    break;

  case SYS_EXIT:
    {
      int ret_sts = *(int*)(((char*)f->esp) + sizeof(int));
      exit_handler(ret_sts);
    }
    break;

  case SYS_WRITE:
    {
      struct write_args *w = ((int*)f->esp)[1];
      int result= handle_write(w->fd, w->buffer, w->size);
      f->eax=result;
    }
    break;

  case SYS_READ:
    {
      struct read_args *r = ((int*)f->esp)[1];
      int result= handle_read(r->fd, r->buffer, r->size);
      f->eax=result;
    }
    break;

  case SYS_OPEN:
    {
      char **addr = (char **)(((char*)f->esp) + sizeof(int));
      char *file_name = *addr;

      int fd = handle_open(file_name);
      printf("\nfd returned: %d\n\n", fd);
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
      /*int result = */ handle_seek(fd, pos);
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
}
