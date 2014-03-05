#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
  char *text = "hogehogehogehogehogefoohoge";
  char *pattern = "foo";

  int index = 0;
  int text_length = strlen(text);
  int pattern_length = strlen(pattern);

search:
  while (index < text_length) {
    for(int i = 0; i < pattern_length && index + i < text_length; i++) {
      if (text[index + i] != pattern[i]) {
        index += (i + 1);
        goto search;
      }
    }
    printf("マッチした位置 %d\n", index);
    index += pattern_length;
  }
  return 0;
}

