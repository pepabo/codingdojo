#include <stdlib.h>
#include <stdio.h>

struct node {
  int value;
  struct node *next;
};

int main(void) {
  struct node root;
  root.value = 10;
  printf("%d\n", root.value);
  return 0;
}
