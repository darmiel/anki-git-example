#!/usr/bin/env bash

# header
echo "# cards"
echo "List of cards in this repo"
echo ""

# table header
echo "| Num | Front |"
echo "| --- | ----- |"

i=0

# find all .card files
for c in $(find . -name '*.card'); do
  FRONT=$(cat "$c" | sed '/--- {{#front/,/--- {{#back/!d' | sed '1d' | sed '$d')

  i=$((i+1))
  echo "| $i | $FRONT |"
done