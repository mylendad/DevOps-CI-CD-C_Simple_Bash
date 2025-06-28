CC=gcc
CFLAGS=-std=c11 -Wall -Werror -Wextra
LDFLAGS=-g
MATHFLAG=-lm
TARGET=main
SHELL:=/bin/bash
FILE=tests/test_files/test.txt tests/test_files/test_2.txt tests/test_files/empty.txt
FILEERROR=qwerty
CHECK=2>&1 valgrind --tool=memcheck --leak-check=yes

.PHONY: tests s21_cat s21_grep

all: s21_cat s21_grep
		

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
		chmod +x tests/tests.sh
		tests/tests.sh

style:
		cp ../materials/linters/.clang-format ./
		clang-format -n ./*.c
		clang-format -n ./*.h
		clang-format -i ./*.c
		clang-format -i ./*.h
		clang-format -n ./*.c
		clang-format -n ./*.h