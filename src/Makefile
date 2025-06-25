CC=gcc
CFLAGS=-std=c11 -Wall -Werror -Wextra
LDFLAGS=-g
MATHFLAG=-lm
TARGET=main
SHELL:=/bin/bash
FILE=test_files/test.txt test_files/test_2.txt ./test_files/empty.txt fergth
FILEERROR=qwerty
CHECK=2>&1 valgrind --tool=memcheck --leak-check=yes

all: s21_cat s21_grep tests clean
		

s21_cat:
		$(CC)  $(CFLAGS) test_cat.c cat.c $(LDFLAGS) -o s21_cat

s21_grep:
		$(CC)  $(CFLAGS) test_grep.c grep.c $(LDFLAGS) -o s21_grep

clean: 
		rm s21_cat
		rm s21_grep

leaks_linux:
		valgrind --tool=memcheck --leak-check=yes ./s21_cat

leaks_mac_os:
		leaks -atExit -- ./s21_cat

tests:
		chmod +x tests.sh
		./tests.sh