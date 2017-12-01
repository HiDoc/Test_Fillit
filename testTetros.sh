#!/bin/bash

path="../../Fillit/fillit"

echo Tetrominos non valide
echo *********************
for file in ./TetroNotValid/*; 
do
	$path $file | diff <(echo "error") -;	
done;

echo *********************
echo "File not valid"
$path hello

echo *********************
count=1
echo Tetrominos valides
echo *********************
for file in ./TetroValid/*; 
	do
   		$path $file | diff FillitValid/"$count".txt -;
		((count++));	
done;
echo *********************
