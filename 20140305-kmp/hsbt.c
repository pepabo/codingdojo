#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int kmp(char *, char *);

int main(int argc, char **argv)
{
  if (argc < 2){
    return 0;
  }

  printf("index: %d\n", kmp(argv[1], argv[2]));

  return 0;
}
int kmp(char *text, char *pattern)
{
  printf("text: %s\n", text);
  printf("pattern: %s\n", pattern);

  int t_max = strlen(text);
  int p_max = strlen(pattern);

  for(int i = 0; i < t_max; i++){
    for(int j = 0; j < p_max; j++){
      if(t_max < i + p_max){
	return -1;
      }else{
	if(text[i+j] != pattern[j]){
	  break;
	}
	if(j + 1 == p_max){
	  return i;
	}
      }
    }
  }

  return 0;
}
