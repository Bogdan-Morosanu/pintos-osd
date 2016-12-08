#include <syscall.h>
#include "../syscall-nr.h"

/* Invokes syscall NUMBER, passing no arguments, and returns the
   return value as an `int'. */
#define syscall0(NUMBER)                                        \
        ({                                                      \
          int retval;                                           \
          asm volatile                                          \
            ("pushl %[number]; int $0x30; addl $4, %%esp"       \
               : "=a" (retval)                                  \
               : [number] "i" (NUMBER)                          \
               : "memory");                                     \
          retval;                                               \
        })

/* Invokes syscall NUMBER, passing argument ARG0, and returns the
   return value as an `int'. */
#define syscall1(NUMBER, ARG0)                                           \
        ({                                                               \
          int retval;                                                    \
          asm volatile                                                   \
            ("pushl %[arg0]; pushl %[number]; int $0x30; addl $8, %%esp" \
               : "=a" (retval)                                           \
               : [number] "i" (NUMBER),                                  \
                 [arg0] "g" (ARG0)                                       \
               : "memory");                                              \
          retval;                                                        \
        })

/* Invokes syscall NUMBER, passing arguments ARG0 and ARG1, and
   returns the return value as an `int'. */
#define syscall2(NUMBER, ARG0, ARG1)                            \
        ({                                                      \
          int retval;                                           \
          asm volatile                                          \
            ("pushl %[arg1]; pushl %[arg0]; "                   \
             "pushl %[number]; int $0x30; addl $12, %%esp"      \
               : "=a" (retval)                                  \
               : [number] "i" (NUMBER),                         \
                 [arg0] "g" (ARG0),                             \
                 [arg1] "g" (ARG1)                              \
               : "memory");                                     \
          retval;                                               \
        })

/* Invokes syscall NUMBER, passing arguments ARG0, ARG1, and
   ARG2, and returns the return value as an `int'. */
#define syscall3(NUMBER, ARG0, ARG1, ARG2)                      \
        ({                                                      \
          int retval;                                           \
          asm volatile                                          \
            ("pushl %[arg2]; pushl %[arg1]; pushl %[arg0]; "    \
             "pushl %[number]; int $0x30; addl $16, %%esp"      \
               : "=a" (retval)                                  \
               : [number] "i" (NUMBER),                         \
                 [arg0] "g" (ARG0),                             \
                 [arg1] "g" (ARG1),                             \
                 [arg2] "g" (ARG2)                              \
               : "memory");                                     \
          retval;                                               \
        })

void
halt (void) 
{
  syscall0 (SYS_HALT);
  NOT_REACHED ();
}

void
exit (int status)
{
  syscall1 (SYS_EXIT, status);
  NOT_REACHED ();
}

pid_t
exec (const char *cmd_line)
{
  return (pid_t) syscall1 (SYS_EXEC, cmd_line);
}

int
wait (pid_t pid)
{
  return syscall1 (SYS_WAIT, pid);
}


struct create_args {
    unsigned initial_size;
    const char *file;
};

bool
create (const char *file, unsigned initial_size)
{
  struct create_args c = { initial_size, file };
  return syscall1 (SYS_CREATE, &c);
  //return syscall2 (SYS_CREATE, file, initial_size);
}

bool
remove (const char *file)
{
  return syscall1 (SYS_REMOVE, file);
}

int
open (const char *file)
{
  return syscall1 (SYS_OPEN, file);
}

int
filesize (int fd) 
{
  return syscall1 (SYS_FILESIZE, fd);
}

struct read_args {
    unsigned size;
    void *buffer;
    int fd;
};

int
read (int fd, void *buffer, unsigned size)
{
  struct read_args r = { size, buffer, fd };
  return syscall1 (SYS_READ, &r);
}

struct write_args {
    unsigned size;
    void *buffer;
    int fd;
};

int
write (int fd, const void *buffer, unsigned size)
{
  struct write_args w = { size, buffer, fd };
  return syscall1 (SYS_WRITE, &w);
  //return syscall3 (SYS_WRITE, fd, buffer, size);
}

struct seek_args {
    unsigned position;
    int fd;
};

void
seek (int fd, unsigned position) 
{
  struct seek_args s= {position, fd};
  syscall1(SYS_SEEK, &s);
  //syscall2 (SYS_SEEK, fd, position);
}

unsigned
tell (int fd) 
{
  return syscall1 (SYS_TELL, fd);
}

void
close (int fd)
{
  syscall1 (SYS_CLOSE, fd);
}

mapid_t
mmap (int fd, void *addr)
{
  return syscall2 (SYS_MMAP, fd, addr);
}

void
munmap (mapid_t mapid)
{
  syscall1 (SYS_MUNMAP, mapid);
}

bool
chdir (const char *dir)
{
  return syscall1 (SYS_CHDIR, dir);
}

bool
mkdir (const char *dir)
{
  return syscall1 (SYS_MKDIR, dir);
}

bool
readdir (int fd, char name[READDIR_MAX_LEN + 1]) 
{
  return syscall2 (SYS_READDIR, fd, name);
}

bool
isdir (int fd) 
{
  return syscall1 (SYS_ISDIR, fd);
}

int
inumber (int fd) 
{
  return syscall1 (SYS_INUMBER, fd);
}

/*
 * Added by Adrian Colesa - multithreading
 */
int uthread_create(THREAD_FUNC th_fc, int* fc_arg)
{
	return syscall2 (SYS_UTHREAD_CREATE, th_fc, fc_arg);
}

int uthread_join(int th_id, int* th_status)
{
	return syscall2 (SYS_UTHREAD_JOIN, th_id, th_status);
}

int uthread_joinall()
{
	return syscall0(SYS_UTHREAD_JOINALL);
}

void uthread_exit(int th_exit_code)
{
	syscall1 (SYS_UTHREAD_EXIT, th_exit_code);
}

int uthread_getpid()
{
	return syscall0 (SYS_UTHREAD_GETPID);
}

int uthread_gettid()
{
	return syscall0 (SYS_UTHREAD_GETTID);
}

void uthread_msleep( uint32_t s )
{
	syscall1( SYS_MSLEEP, s );
}
