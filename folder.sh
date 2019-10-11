#!/bin/bash

files_count() {
	nb_files=0
	for item in `ls $dir`; do
		if [ -e $dir/$item ] && [ -f $dir/$item ]; then

			let "nb_files++"
		fi
	done
	echo $nb_files
}

folders_count() {
	nb_folders=0
	for item in `ls $dir`; do
		if [ -e $item ] && [ -d $item ]; then
			let "nb_folders++"
		fi
	done
	echo $nb_folders
}

sub_files_count() {
	nb_sub_files=0
	tmp=$dir
	for item in `ls $tmp`; do
		if [ -e $item ] && [ -d $item ]; then
			dir=$tmp/$item
			let "nb_sub_files+=$(files_count)"
		fi
	done
	dir=$tmp
	echo $nb_sub_files
}

dir=.

echo "Le dossier contient $(files_count) fichier et $(folders_count) sous-répertoires qui contiennent $(sub_files_count) fichiers."