#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <syscall.h>

int main(int argc, char *argv[])
{
  if (argc == 1) {
    exec("exec-test.bin n -l");

  } else if (argc == 3 &&
	     !strcmp("exec-test.bin", argv[0]) &&
	     !strcmp("n", argv[1]) &&
	     !strcmp("-l", argv[2]) &&
	     NULL == argv[3]) {

    exec("exec-test.bin SUCCESS!!");
  }
  
  return 0;
}
