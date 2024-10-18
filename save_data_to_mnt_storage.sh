#!/bin/bash

# Auteur : Neven
# Date : 18-10-2024
# Description : Sauvegarde du répertoire /data vers /mnt/storage
# Usage : ./save_data_to_mnt_storage.sh

rsync -av /data /mnt/storage

echo "Sauvegarde terminéé avec succès le $(date)" >> /var/log/sauvegarde_data.log
