#!/bin/bash

# Generate 10 random 3-digit numbers and store them in an array
for i in {1..10}; do
  arr[$i]=$((RANDOM % 900 + 100))
done

echo "Original array:"
echo "${arr[@]}"

# Find the second largest element
largest=${arr[0]}
second_largest=${arr[0]}
for i in "${arr[@]}"; do
  if [[ $i -gt $largest ]]; then
    second_largest=$largest
    largest=$i
  elif [[ $i -gt $second_largest && $i -lt $largest ]]; then
    second_largest=$i
  fi
done
echo "Second largest element: $second_largest"

# Find the second smallest element
smallest=${arr[0]}
second_smallest=${arr[0]}
for i in "${arr[@]}"; do
  if [[ $i -lt $smallest ]]; then
    second_smallest=$smallest
    smallest=$i
  elif [[ $i -lt $second_smallest && $i -gt $smallest ]]; then
    second_smallest=$i
  fi
done
echo "Second smallest element: $second_smallest"
