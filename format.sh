#!/bin/bash

if [ ! -f src/.clang-format ]; then
    cp materials/linters/.clang-format src/ || exit 2
fi

FILES=$(find src/ -name "*.c" -o -name "*.h")
FORMAT_DIFF=$(echo "$FILES" | xargs clang-format -style=file -output-replacements-xml | grep -c "<replacement ")

if [ "$FORMAT_DIFF" -ne 0 ]; then
  while IFS= read -r file; do
    if [ -f "$file" ]; then
      echo "▶ $file"
      clang-format -style=file "$file" > "$file.formatted"
      diff -u "$file" "$file.formatted" || true
      rm -f "$file.formatted"
    fi
  done <<< "$FILES"
  exit 1
else
  echo "SUCCESS!"
  exit 0
fi