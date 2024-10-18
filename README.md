# TP Administration WINDOWS LINUX 18.10.2024

## Ce dépôt GitHub sert à restituer mon travail durant ce TP

### Premier script : monitoring.sh

***Ce script sert à afficher des informations liées au système.***

Les informations affichées sont les suivantes :

        * L'architecture du système d'exploitation ainsi que la version du kernel
        * Nombre de processeur physique
        * Nombre de processeur virtuel
        * L'usage RAM ainsi que sa disponibilité
        * L'espace de stockage disponible
        * L'usage CPU
        * La date et l'heure du dernier démarrage
        * Si LVM est actif ou non
        * Le nombre de connexion active
        * L'adresse IPv4 ainsi que l'adresse MAC
        * Le nombre de commande exécutées avec sudo

### Second script : Sauvegarde des données présentes sur /data vers /mnt/storage

	* Export des données de /data vers /mnt/storage

 ## Screens liés aux différentes questions

 ### lsblk, blkid
![lsblk](https://github.com/user-attachments/assets/a65b85e6-58cd-4c37-ac0b-f874dc2af8b7)
![blkid](https://github.com/user-attachments/assets/3564fd9d-d360-4452-b09f-e89748ee50e9)

### dpkg -l
![dpkg -l apparmor git ssh sudo ufw vim](https://github.com/user-attachments/assets/31d33137-6866-4d5a-afb8-8ae0f2e6ffaa)

### getent passwd & getent group
![getent passwd](https://github.com/user-attachments/assets/da25a58f-b21a-443c-9eac-05fa4a762deb)
![getent group](https://github.com/user-attachments/assets/6b1f2b8e-85ff-468e-a625-2f4936d1e16b)

### ls -l /data getfacl
![ls -l data](https://github.com/user-attachments/assets/4e6acc94-3c20-42ae-970c-416864bc2da7)
![getfacl data](https://github.com/user-attachments/assets/29dab7dc-ecf1-47bf-975f-875879a86b4e)

### /etc/ssh/sshd_config & ss -tulnp | grep 4242
![ssh](https://github.com/user-attachments/assets/47f15d95-c010-414f-9223-8bf19b8e3a63)
![ss -tulnp](https://github.com/user-attachments/assets/2a9fd1d9-0f32-4c65-83d2-edc8c5256703)

### ufw status
![ufw status numbered](https://github.com/user-attachments/assets/3ff526ec-1943-40bb-82d1-28eec3743bf9)

### hostname
![hostname](https://github.com/user-attachments/assets/b820c106-ed09-4b4a-b1ba-766556fee702)

### /etc/pam.d/common-password & chage -l 
![chage -l](https://github.com/user-attachments/assets/ba1ccffc-f4ec-4db4-9242-fef45c84576e)

### /etc/sudoers & /var/log/sudo/
![sudo](https://github.com/user-attachments/assets/c0e09396-2305-4224-8e4d-03b41becf589)







