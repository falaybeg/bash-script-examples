#!/bin/bash

#create 10 file into txt format
for i in {1..10}
do
  touch dosya$i.txt
done

#read file names from current directory and print names 
for FILE in *.txt
do
  echo "File Name: $FILE"
done
 
#write current date into txt files
for FILE in *.txt
do
  echo $(date) >> $FILE
  ps -ef | head -5 >> $FILE
  echo ===================== >> $FILE
done
