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
#include "lib/stdlib.h"

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

struct seek_args {
    unsigned pos;
    int fd;
};

struct mmap_args {
    int fd;
    void *addr;
};

struct create_args {
    unsigned initial_size;
    const char *file;
};

static void
syscall_handler (struct intr_frame *f)
{
  if (!validate_read_addr(f->esp, 2 * sizeof(int))) {
      process_exit(EXIT_FAILURE);
  }

  int syscall_no = *((int*)f->esp);

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
      printf("sys write called!\n");
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
      f->eax = fd;
    }
    break;

  case SYS_CREATE:
    {
      //char **addr = (char **)(((char*)f->esp) + sizeof(int));
      //char *file_name = *addr;
      //unsigned initial_size= *(unsigned *)((char *)f->esp + sizeof(char *));
      struct create_args *c= ((int *)f->esp)[1];
      bool result = handle_create(c->file, c->initial_size);
      f->eax = result;
    }
    break;

  case SYS_SEEK:
    {
      struct seek_args *s = ((int*)f->esp)[1];
      /*int result = */ handle_seek(s->fd, s->pos);
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

  case SYS_FILESIZE:
  {
      int fd = *(int *)((char *)f->esp + sizeof(int));
      f->eax = handle_filesize(fd);
  }
  break;

  case SYS_MMAP:
  {
      struct mmap_args *args = *(struct mmap_args**)((char *)f->esp + sizeof(int));

      sema_down(&fs_sema);

      struct user_file *uf = NULL;
      struct list_elem *e;
      struct list *opened_files = &thread_current()->pd->opened_files;
      for (e = list_begin(opened_files); e != list_end(opened_files); e = list_next(e)) {

          struct user_file *cnt_uf = list_entry(e, struct user_file, elem);
          if (cnt_uf->fd == args->fd) {
              uf = cnt_uf;
              break;
          }
      }

      if (NULL == uf) {
          f->eax = -1;

      } else {
          f->eax = (uint32_t) uf->f;
          setup_mmap(uf->f, args->addr);
      }

      sema_up(&fs_sema);
  }
  break;

  case SYS_MUNMAP:
  {

  }
  break;

  default:
    { // invalid syscall number
      process_exit(EXIT_FAILURE);
    }
    break;
  }
}
