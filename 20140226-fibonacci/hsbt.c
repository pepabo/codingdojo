#include <stdio.h>
#include <stdlib.h>

int fib(int n)
{
  int num;
  if (n == 0) {
    num = 0;
  }else if(n == 1){
    num = 1;
  }else{
    num = fib(n-2) + fib(n-1);
  }
  return num;
}

int main(int argc, char **argv)
{
  int n;

  if (argc > 1){
    n = atoi(argv[1]);
  }else{
    n = 0;
  }

  for(int i = 0; i <= n; i++){
    printf("%d\n", fib(i));
  }
  return 0;
}
