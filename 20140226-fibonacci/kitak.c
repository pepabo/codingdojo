#include <stdio.h>
#include <stdlib.h>

int fib(int n);

int main(int argc, char **argv) {
  int term_number = 0;
  if (argc >= 2) {
    term_number = atoi(argv[1]);
  } else {
    term_number = 30;
  }
  for(int i=0; i < term_number; i++) {
    printf("%d, ", fib(i));
    fflush(stdout);
  }
  printf("・・・");
  return 0;
}

int fib(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  }
  return fib(n - 1) + fib(n - 2);
}
