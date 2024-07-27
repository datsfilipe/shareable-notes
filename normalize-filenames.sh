#!/bin/sh

set -e

normalize_filename() {
  local original_filename="$1"
  local directory
  local base_filename
  local new_filename

  directory=$(dirname "$original_filename")
  base_filename=$(basename "$original_filename")

  new_filename=$(echo "$base_filename" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

  original_filepath="$directory/$base_filename"
  new_filepath="$directory/$new_filename"

  if [ "$original_filepath" != "$new_filepath" ]; then
    if git ls-files --error-unmatch "$original_filename" >/dev/null 2>&1; then
      git mv "$original_filename" "$new_filepath"
    else
      mv "$original_filename" "$new_filepath"
      git add "$new_filepath"
      git rm --cached "$original_filename"
    fi
  fi
}

if [ $# -eq 0 ]; then
  IFS=$'\n'
  for file in $(git ls-files); do
    if [[ "$file" != LICENSE && "$file" != README* && "$file" == *.md ]]; then
      normalize_filename "$file"
    fi
  done
else
  for file in "$@"; do
    if [[ "$file" != LICENSE && "$file" != README* && "$file" == *.md ]]; then
      normalize_filename "$file"
    fi
  done
fi
