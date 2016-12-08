#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <syscall.h>

int main(int argc, char *argv[])
{
  if (argc == 1) {
    int i = exec("exec-test.bin n -l");
    int ret = wait(i);
    
  } else if (argc == 3 &&
	     !strcmp("exec-test.bin", argv[0]) &&
	     !strcmp("n", argv[1]) &&
	     !strcmp("-l", argv[2]) &&
	     NULL == argv[3]) {

    int i = exec("exec-test.bin SUCCESS!!");
    int ret = wait(i);
  }

  exit(10);
  return 0;
}
