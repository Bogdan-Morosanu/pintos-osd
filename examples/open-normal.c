/* Open a file. */

#include <syscall.h>
#include "tests/lib.h"
#include "tests/main.h"

int
main (int argc, char **argv) 
{
  /* int handle = open ("sample.txt"); */
  /* if (handle < 2) */
  /*   printf("noooot"); */
  write(1, "oookkk", sizeof("oookkk"));
  exit(0);
}
