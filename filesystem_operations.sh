#!/bin/bash
 
#for provided file print the summary of what permission user has g
ranted
# example ./filetest.sh hello.txt
#READ: YES
#WRITE: NO
#EXECUTE: NO
 
#argument check
if [ $# -ne 1 ]; then
  echo "Provide exactly one argument"
  exit 1
fi
 
#variale assignment
FILE=$1
 
echo "File Path $FILE"
 
#check if the file exists
if [ -f $FILE ]; then
 
  #default variables
  VAR_READ="NO"
  VAR_WRITE="NO"
  VAR_EXE="NO"
 
  if [ -r $FILE ]; then
    VAR_READ="YES"
  fi
 
  #check if file is writable
  if [ -w $FILE ]; then
    VAR_WRITE="YES"
  fi
 
  if [ -x $FILE ]; then
    VAR_EXE="YES"
  fi
 
  echo "===FILE: $FILE==="
  echo "READ: $VAR_READ"
  echo "WRITE: $VAR_WRITE"
  echo "EXECUTABLE: $VAR_EXE"
 
else
  echo "$FILE does not exists"
fi
