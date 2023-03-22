#!/bin/bash

echo "Enter File path"
read FILE

if [ -e $FILE ]
then
    echo "File '$FILE' exists."
else
    echo "File $FILE DOES NOT exist."
fi

if [ -w $FILE ]
then
    echo "File '$FILE' is writable."
else
    echo "File $FILE IS NOT writable."
fi


