#!/bin/bash

#### Calculatrice Shell
#### Une fonction pour chaque type de calcul : +, -, /, *
    firstNumber=0 
    operator=0

function soustraction () {

    let "result = $result - $firstNumber"
    echo -e "\n$result"
}

function multiplication () {

    let "result = $result * $firstNumber"
    echo -e "\n$result"
}

function addition () {
    let "result = $result + $firstNumber"
    echo -e "\n$result"
    
}

function division () {
 
    let "result = $result / $firstNumber"
    echo -e "\n$result"
    
}

function askBonus (){

    echo "Pour arreter le calcul, entrez S a la place de l'operateur"
    while test $operator != "S"
    do 
        askNumber
    done
    echo "Resultat : $firstNumber"
}

function askNumber (){
    read -p "Quel nombre voulez-vous calculer?" firstNumber
    askOperator
}

function askOperator (){
    read -p "Quel operateur souhaitez-vous utiliser?" -n 1 operator

    case $operator in 
    "+") addition
    ;;
    "-") soustraction
    ;;
    "*") multiplication
    ;;
    "/") division
    ;;
    *) echo "Je n'ai pas compris."
    ;;
esac
}

askBonus