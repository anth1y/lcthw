#include <stdio.h>

int main(int argc, char *argv[])
{
  // go through each string in argv
  int i = 0;
  while(i < argc) {
    printf("arg %d: %s\n", i, argv[i]);
    i++;
  }
  // make our own array of strings
  char *states[] = {
    "Washington", "Oregon", 
    "California","Texas"
  };

  int num_states = 4;
  i = 0; 
  while (i < num_states) {
    printf("states %d: %s\n", i, states[i]);
    i++;
  }
  return 0;
}
