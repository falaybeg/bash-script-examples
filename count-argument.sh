#!/bin/bash

#usage ./count-argument.sh one two three new something
 
COUNT=1
 
for arg in "$@"
do
  echo "$COUNT. argument: $arg"
  let COUNT++
done
 