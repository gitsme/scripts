#!/bin/bash
# Expected input: File with two columns of text
# Reads line by line, creates a file with name from the first column, and inserts text in column two into file.
# Prints out file > text while it executes
# 
FILE=$1

while read line; do
 
    column1=$(echo $line | awk '{ print $1 }')
    column2=$(echo $line | awk '{ print $2 }')

    echo "$column2 > $column1"
    echo $column2 > $column1
done < $FILE
