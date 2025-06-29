#ifndef GREP_H
#define GREP_H

#include <regex.h>
#include <stdio.h>

#define MAX_LINE_SIZE 1025

typedef struct flags {
  int error;
  int len;
  int memory;
  char *reg_pattern;
  int e, i, v, c, l, n, h, s, f, o;
} flags;

void add_pattern(flags *argument, char *pattern);

void reader_regs(flags *argument, char *file_name);

flags parser(int args, char **argv);

void flag_o(flags *argument, regex_t *re, char *line, char *file_name,
            int line_counter);

void outline(char *line, int n);

FILE *reader(char *file_name);

void comparator(flags *argument, char *file, regex_t *reg, int argc,
                char **argv, int count_filename);

void output(flags *argument, int argc, char **argv);

#endif  // GREP_H