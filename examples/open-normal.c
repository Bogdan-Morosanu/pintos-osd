/* Open a file. */

#include <syscall.h>
#include "tests/lib.h"
#include "tests/main.h"

int
main (int argc, char **argv) 
{
  char buf[3];	
  int handle = open ("sample.txt");
  int readres = read(handle,buf,2);
  seek(handle,10);
  readres = read(handle, buf,2);

  buf[2] = '\0';
  printf(buf);
  
  exit(0);
}
