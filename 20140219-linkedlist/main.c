#include <stdlib.h>
#include <stdio.h>

struct node {
  int value;
  struct node *next;
};

struct list {
  struct node *root;
};

void append(struct list *list, struct node *node);

int main(void) {
  struct list list;
  struct node root;
  struct node next_node;
  root.value = 10;
  list.root = &root;
  next_node.value = 20;
  append(&list, &next_node);
  printf("%d\n", list.root->value);
  printf("%d\n", list.root->next->value);
  return 0;
}

void append(struct list *list, struct node *node) {
  list->root->next = node;
}

