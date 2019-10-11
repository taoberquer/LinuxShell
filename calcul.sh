#!/bin/bash

#### Calculatrice Shell
#### Une fonction pour chaque type de calcul : +, -, /, *

function soustraction () {
    let "result = $firstValue - $secondValue"
    echo "Résultat : $firstValue - $secondValue = $result"
}

function multiplication () {
    let "result = $firstValue * $secondValue"
    echo "Résultat : $firstValue * $secondValue = $result"
}

function addition () {
    let "result = $firstValue + $secondValue"
    echo "Résultat : $firstValue + $secondValue = $result"
}

function division () {
    let "result = $firstValue / $secondValue"
    echo "Résultat : $firstValue / $secondValue = $result"
}

function askCalcul () {
    read -p "Quel calcul voulez-vous faire ? (+, -, /, *)" -n 1 calculType
    read -p "Entrez la premiere valeur : " firstValue
    read -p "Entrez la deuxieme valeur : " secondValue
    
    case $calculType in 
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


askCalcul