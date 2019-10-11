#!/bin/bash

#### Backup du dossier qu'on veux 

#### Pour rendre la backup automatique tous les deux jours à 12h45 : 
#### 45 12 */2 * * /chemin/backup.sh nomDossier

# On enregistre la date 
today=$(date +%Y-%m-%d)

#### Precision du repo de backup
backupdir=./backup/$1-backup-$today

#### Si le fichier n'existe pas, on le créé, pareil pour backup log

if [ ! -e ./backup ]
then 
mkdir backup
fi

if [ ! -e backup.log ]
then 
touch backup.log
fi

#### On fais la backup

cp -R $1 $backupdir

#### On écris ça dans backup.log

(exec "$PWD/folder.sh") >> backup.log