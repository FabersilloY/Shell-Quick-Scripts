#!/bin/zsh

if [[ $# -ne 1 ]]; then
  echo "Usage: powerflex ACN-ACC"
  echo "Example: powerflex 0051-16"
  exit 1
fi

input="$1"

# Validate format and extract ACN and ACC
if [[ $input =~ ^([0-9]{2,4})-([0-9]{2,3})$ ]]; then
  acn="${match[1]}"
  acc="${match[2]}"
else
  echo "Invalid format. Use ACN-ACC (e.g., 0051-16)"
  exit 1
fi

url="https://powerflex.io/api/admin/view_ACC_tree/$acn/$acc"

open "$url"
