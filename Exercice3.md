# Exercice 3 - Quizz

## Questions
Répond aux questions suivantes:

1. Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux
2. Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?
3. Comment faire pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push ?
4. Quelles commandes git utiliser pour fusionner les branches main et test_valide ?
5. Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant :
```
Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :
"Bonjour est-ce que ce clavier fonctionne bien ?"
"Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"
"Même des tildes ~ ?"
"Evidemment !"
```
6. La commande jobs -l donne le résultat ci-dessous. Quelle commande te permet de mettre en avant le processus gedit ?  
```
wilder@Ubuntu:~$ jobs -l
[1]  37970 En cours d'exécution   gedit &
[2]  37971 En cours d'exécution   xeyes &
[3]- 37972 En cours d'exécution   sleep
```
7. Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.
8. Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls.
9. Dans la trame ethernet, qu'est-ce que le payload ?
10. Pourquoi les classes IP sont remplacées par le CIDR ?

## Réponses
1. Voici dees lignes de commande bash qui permet de lister la liste des utilisateurs d'un système Linux :
```
cut -d: -f1 /etc/passwd
cat /etc/passwd
```
2. La commande bash permettant de changer les droits du fichier myfile en rwr-r-- est : `chmod 744`.
3. Pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push, je créé un fichier `.gitignore` à la racine de mon dépôt et d'y ajouter la règle `*.pdf`. Cela indiquerea à Git d'ignorer tous les fichiers avec l'extension `.pdf`.
4. Il faut utiliser la commande `git merge`pour fusionner deux branches.
5. Cela donne en bash
```
echo "Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :"
echo " - Bonjour est-ce que ce clavier fonctionne bien ?"
echo " - Evidemment ! On peut tout écrire avec, que ce soit des pipes | ou bien des backslash \ !"
echo " - Même des tildes ~ ?"
echo " - Evidemment !"
```
6. La commande permettant de mettre en avant le processus `gedit` est `fg %1`, `%1` car il est le premier processus donné par `jobs -l`.
7. Voici les différents équipements réseaux et leurs spécificité par couche :  

| Couche | Equipement | Spécificités |
| --- | --- | --- |
| 2 | Switch qui communique en 1 pour 1  en utilisant les adresses MAC des machines pour pouvoir les identifier | Equipement passif utilisant les adresses MAC des machines |
| 3 | Routeur qui communique grâce à une table de routage et des adresses IP des machines pour pouvoir les identifier | Equipement actif utilisant que les adresses IP des machines |

9. Les équivalents PowerShell sont :

| Bash | Powershell |
| --- | --- |
| cd | Set-Location *chemin* |
| cp | Copy-Item *Chemin d'origine du fichier ou dossier* -Destination *Chemin de destination* |
| mkdir | New-Item -Type Directory *Nom du répertoire* |
| ls | Get-ChildItem |

10. Le payload symbolise la charge des données transportées par un protocole lors d'une communication.
11. Les classes IP sont remplacées par le CIDR car il permet d'identifier sur quel réseau où se trouve l'adresse IP. Il permet aussi d'augmenter le nombre d'adresse IP disponibleet d'éviter le gaspillage.
