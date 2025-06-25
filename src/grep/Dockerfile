FROM ubuntu:latest

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    valgrind

# Copy your C file and testing script
COPY grep.c .
COPY grep.h .
COPY Makefile .
COPY ./test_files/pattern.txt .
COPY ./test_files/empty.txt .
COPY ./test_files/test.txt .
COPY ./test_files/test_2.txt .

# Compile your C code
RUN chmod +x Makefile
RUN make
RUN chmod +x s21_grep


# Command to run the tests