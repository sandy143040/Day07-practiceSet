#!/bin/bash

# Array of integers
arr=(-1 2 1 0 -2 3)

# Loop through each element in the array
for (( i=0; i<${#arr[@]}-2; i++ ))
do
  for (( j=i+1; j<${#arr[@]}-1; j++ ))
  do
    for (( k=j+1; k<${#arr[@]}; k++ ))
    do
      # Check if the sum of three integers is zero
      if [[ $(( ${arr[i]} + ${arr[j]} + ${arr[k]} )) -eq 0 ]]
      then
        echo "${arr[i]}, ${arr[j]}, and ${arr[k]} add up to zero"
      fi
    done
  done
done















