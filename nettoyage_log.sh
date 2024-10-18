#!/bin/bash

# Auteur : Neven
# Date : 18-10-2024
# Description : Script nettoyant les journaux systèmes toutes les heures 

journalctl --vacuum-time=1d

echo "Nettoyage des journaux effectué le $(date)" >> /var/log/clean_logs.log

