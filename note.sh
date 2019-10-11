#!/bin/bash

x=1

while [ $x -eq 1 ]
do 
    
    read -p 'Note ? (1-20)' note

    if [ $note -lt 1 ] || [ $note -gt 20 ]
    then 
        echo "Nombre incorrect !"
        exit
    fi

    if [ $note -gt 16 ] && [ $note -le 20 ]
    then
        echo "Tres bien"
    elif [ $note -gt 14 ] && [ $note -le 16 ]
    then
        echo "Bien"
    elif [ $note -gt 12 ] && [ $note -le 14 ]
    then
        echo "Assez bien"
    elif [ $note -ge 10 ] && [ $note -le 12 ]
    then
        echo "Moyen"
     elif [ $note -lt 10 ]
    then
        echo "Insuffisant"
    fi
    
    read -p 'Try Again (y/n) ?' i
    if [ $i = y ]
    then 
        x=1
    else
        x=0
    fi
done

