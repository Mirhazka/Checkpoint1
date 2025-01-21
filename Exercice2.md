# Exercice 2 - Script de création d'utilisateurs en bash 

## Objectif du script :
- Création automatique d'utilisateurs
- Les utilisateurs à créer sont entrés en argument du script

## Utilisation du script :
On exécute le script en mettant en arguments des noms d'utilisateurs à créer.

Exemple pour créer 3 utilisateurs user1, user2, user3 :  
./addUsers.sh user1 user2 user3

> On doit pouvoir créer un nombre quelconques d'utilisateurs, soit 2, soit 3, soit 5, ... Et pas uniquement 3 comme dans l'exemple !

## Tâches du script :
Il doit y avoir une vérification de la présence d'arguments. Sans argument, le script affiche `Il manque les noms d'utilisateurs en argument - Fin du script` et il s'arrete.  
Pour chaque utilisateur à créer, il doit y avoir une vérification de l'existence dans le système. S'il existe déjà, un message indiquera `L'utilisateur <nom_utilisateur> existe déjà` et le script continue.  
Pour chaque utilisateur créer, il doit y avoir une vérification de cette création. Si la création s'est bien effectuée, un message affiche `L'utilisateur <nom_utilisateur> a été crée`. Sinon, un message affiche `Erreur à la création de l'utilisateur <nom_utilisateur>`. Dans tous les cas, le script continue.  

## A rendre :
Le script addUsers.sh complet et fonctionnel

## Script :
```bash
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
```
