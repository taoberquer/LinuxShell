#!/bin/bash

amount=0
nb=0

while read line
do
	a=( $line )
	let "amount=$amount + ${a[2]}"
	let "nb++"
done < file.txt

let "moy=$amount/$nb"
echo $moy