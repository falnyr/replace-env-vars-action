#!/usr/bin/env bash

set -e
FILENAME=$1

if [ -z $FILENAME ]; then
  echo 'The path to the file is required'
  exit 1
fi

while IFS='=' read -r key value; do
  echo "Setting $key to $value "
  echo $value | wc -l
  sed -i "s|__$key__|$value|g" $FILENAME
done < <(printenv)
