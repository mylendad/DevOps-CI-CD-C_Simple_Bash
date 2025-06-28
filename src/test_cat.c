#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "cat.h"

int main(int argc, char *argv[]) {
  if (argc < 2) {
    printf("Usage: %s <filename>\n", argv[0]);
    return 0;
  }
  int counter = 1;
  flags argument = parser(argc, argv, &counter);
  int index_for_file = argc - counter;
  output(&argument, index_for_file, &argv[counter]);
  return 0;
}
