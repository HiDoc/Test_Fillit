#!/bin/bash

path="./fillit"

echo Tetrominos non valide
for file in ./TetroNotValid/Tetro*; 
do
	if [ $($path $file) = "error" ]
		then echo Test passed !;
	else
		echo fault
	fi
done;
count=1
for file in ./TetroValid/Tetro*; 
do
	$path $file > ./YourFillit/$count
	diff ./YourFillit/$count ./FillitValid/$count.txt
	count=$((count++))
done;
