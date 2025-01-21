# Exercice 1 - Gestion du stockage
Tu dois utiliser la **VM SRVDEBIAN** fournie par ton formateur.  
Voici les comptes disponibles sur cette VM :

| Utilisateur |	Mot de passe |
| --- | --- |
| root | tSsrsRvdEbianrOot01! |
| wilder | tSsrsRvdEbianwIlder02! |

Le service ssh est installé et démarré sur cette VM.

## 1.1 Préparation du disque
La VM a 2 disques dur. Tu dois préparer le second disque dur de cette manière :
- 1 partition de 6 Go de type ext4 nommée "DATA"
- 1 partition avec le reste du disque de type swap nommée "SWAP"
La partition SWAP est activée (et donc celle déjà sur le 1er disque est désactivée).  

A rendre :
- Des copies d'écran ou des lignes de code qui permettent de voir clairement :
- La création et le formatage des partitions
- La taille des partitions
- Le type de système de fichiers
- La gestion du swap
- Le nom des partitions

## 1.2 Montage
La partition DATA est montée automatiquement au démarrage du système dans un dossier data placé dans /mnt. L'UUID du disque dois être utilisé.

A rendre :
- Des copies d'écran ou des lignes de code qui permettent de voir clairement les étapes de la configuration pour le montage automatique de cette partition.

> Pour les questions 1.1 et 1.2, vérifie bien que tes copies d'écran ou tes lignes de codes montrent clairement ce qui est demandé. Les différentes étapes sont dans l'ordre d’exécution. S'il y a une utilisation de fichier de configuration, le nom et l'emplacement doivent être visible. Ne donne pas d'explication supplémentaire, tes copies d'écran ou tes lignes de codes se suffisent à elles-mêmes.

## Exercice 
### Partition du disque `sdb1`
- Etape 1 : Vérifier l'état des disques présents  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/0_lsblk.png)
- Etape 2 : Avoir plus de données sur les disques présents  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/1_fdisk-l.png)
- Etape 3 : Partionnement du disque sdb pour avoir notre disque sdb1 de 6Go sur plusieurs étapes avec la commande cfdisk /dev/sdb  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/2-0_cfdisk-sdB.png)  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/2-1_cfdisk-sdB.png)
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/2-2_cfdisk-sdB.png)
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/2-3_cfdisk-sdB.png)
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/2-4_cfdisk-sdB.png)
- Etape 4 : Vérification du partitionnement avec la commande fdisk -l  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/3_fdisk-l.png)  
- Etape 5 : Création du dossier mnt/data puis formatage au format ext4 et montage du disque sur /mnt/data  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/4_mkfs%26mount-sdb1.png)
- Etape 6 : Modification du fichier fstab pour garder le montage au démarrage
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/5_fstab-sdb1.png)
- Etape 7 : Vérification que le disque est bien monté sur /mnt/data après reboot de la machine  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/6_reboot-sdb1.png)

### Partition du disque `sdb2`
- Etape 1 : Vérification de l'état des disques présets après partionnement du sdb2  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/7_lsblk-fdisk(rappel).png)  
- Etape 2 : Partionnement du disque sdb pour avoir notre disque sdb2 de 4Go sur plusieurs étapes avec la commande cfdisk /dev/sdb  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/8-0_cfdisk-sdB.png)
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/8-1_cfdisk-sdB.png)
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/8-2_cfdisk-sdB.png)
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/8-3_cfdisk-sdB.png)
- Etape 3 : Vérification du partitionnement avec la commande fdsik -l  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/9_fdisk-l.png)
- Etape 4 : Eteindre le swap du disque sda5  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/10_swapOffsdA5.png)
- Etape 5 : Formatage au format swap et démarrer sdb2 en swap  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/11_mkswap%26swapOnsdB2.png)
- Etape 6 : Modification du fichier fstab pour garder le swapof du sda5 et le swapon du sdb2 au démarrage  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/12_fstab-sdb2.png)
- Etape 7 : Finalités  
![](https://github.com/Mirhazka/Checkpoint1/blob/b3cb80e098a21de13ab34b2d7b6ecb4bcdb013d5/Ressources/13_reboot-sdb2.png)
