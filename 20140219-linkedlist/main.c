#include <stdlib.h>
#include <stdio.h>

struct node {
  int value;
  struct node *next;
};

int main(void) {
  struct node root;
  struct node next_node;
  root.value = 10;
  next_node.value = 20;
  root.next = &next_node;
  printf("%d\n", root.next->value);
  return 0;
}
