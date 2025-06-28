#!/bin/bash

if [ ! -f src/.clang-format ]; then
    cp materials/linters/.clang-format src/
  else
    exit 2
  fi

FORMAT_DIFF=$(find src/ -name "*.c" -o -name "*.h" | xargs clang-format -style=file -output-replacements-xml | grep -c "<replacement ")

if [ "$FORMAT_DIFF" -ne 0 ]; then
  find src/ -name "*.c" -o -name "*.h" | while read file; do
    echo "▶ $file"
    diff -u "$file" <(clang-format -style=file "$file")
  done
  exit 1
else
  echo "SUCCESS!"
fi