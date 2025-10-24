#!/bin/sh

CURRENT_DIR_FILES=`find $PWD -maxdepth 1 -type f -not -name 'robbyrussell.zsh-theme' -not -name 'syncdotfiles.sh'`

for fichier in $CURRENT_DIR_FILES; do
    nom_fichier=`basename $fichier`    
    cp ~/$nom_fichier $fichier
done
