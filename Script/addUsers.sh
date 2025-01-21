#!/bin/bash

# Check if any arguments is provided.
if [ $# -eq 0 ];then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
fi

# Check if the user exist
args=$@

for user in $args;
do
    if grep -q "^$user:" /etc/passwd; then
        echo "L'utilisateur $user existe déjà"
    else
        if sudo useradd $user; then
            echo "L'utilisateur $user a été crée."
        else
            echo "Erreur à la création de l'utilisateur $user"
        fi
    fi
done

echo "[REMARQUE] Il n'est pas possible de continuer le script sans pour autant de nouveau rentrer des arguments!"
