#!/bin/bash

# Auteur : Neven
# Date : 18-10-2024
# Description : Affiche des informations liés au système et au réseau toutes les 5 minutes sur
#		le terminal de tout les utilisateurs
# Usage : monitoring.sh

# Architecture / version du kernel
echo "Architecture et version du kernel :"
uname -a

# Nombre de processeurs physiques
echo -e "\nNombre de processeurs physiques :"
nproc --all

# Nombre de processeurs virtuels
echo -e "\nNombre de processeurs virtuels :"
grep -c ^processor /proc/cpuinfo

# Mémoire vive disponible et taux d'utilisation
echo -e "\nMémoire vive disponible et taux d'utilisation:"
free -h | awk '/Mem:/ {printf "Mémoire disponible: %s / %s (%.2f%% utilisée)\n", $7, $2, ($3/$2)*100}'

# Mémoire disponible et taux d'utilisation
echo -e "\nEspace disque disponible et taux d'utilisation:"
df -h --total | grep 'total' | awk '{printf "Espace disque disponible: %s / %s (%.2f%% utilisée)\n", $4, $2, ($3/$2)*100}'

# Taux d'utilisation des processeurs
echo -e "\nTaux d'utilisation des processeurs:"
mpstat | grep 'all' | awk '{printf "Utilisation CPU: %.2f%%\n", 100 - $12}'

# Date et heure du dernier redémarrage
echo -e "\nDate et heure du dernier redémarrage:"
who -b

# LVM actif ou pas
echo -e "\nLVM est actif :"
if [ $(lsblk | grep 'lvm' | wc -l) -gt 0 ]; then
    echo "Oui."
else
    echo "Non."
fi

# Nombre de connexions actives
echo -e "\nNombre de connexions actives:"
ss -tun | grep 'ESTAB' | wc -l

# Nombre d'utilisateurs utilisant le serveur
echo -e "\nNombre d'utilisateurs actuellement connectés:"
who | wc -l

# Adresse IPv4 et MAC du serveur
echo -e "\nAdresse IPv4 et MAC:"
ip a show | awk '/inet / {print "IPv4: " $2}' | grep -v '127.0.0.1'
ip link show | awk '/ether/ {print "MAC: " $2}'

# Nombre de commandes exécutées avec sudo
echo -e "\nNombre de commandes exécutées avec sudo:"
grep 'COMMAND' /var/log/auth.log | wc -l

echo -e "\nFin des informations système."
