#include <stdio.h>

int fib(int n);

int main(int argc, char **argv) {
  for(int i=0; i < 30; i++) {
    printf("%d, ", fib(i));
  }
  return 0;
}

int fib(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  }
  return fib(n - 1) + fib(n - 2);
}
