#!/bin/bash

function list_menu() {
	echo "Entrer le chiffre correspondant à votre choix :"
	echo "1 - Note.sh"
	echo "2 - Moy.sh"
	echo "3 - Calcul.sh"
	echo "4 - Folder.sh"
	echo "5 - Backup.sh"
	echo "0 - Quitter"
}

function select_choice() {
	case $choice in
		1)
			command ./note.sh
		;;
		2)
			command ./moy.sh
		;;
		3)
			command ./calcul.sh
		;;
		4)
			command ./folder.sh
		;;
		5)
			command ./backup.sh
		;;
	esac
}

choice=1

until [ $choice -eq 0 ]; do
	list_menu
	read choice
	select_choice
done