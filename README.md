# H₂Optimize - Déploiement

ssh admin-hetic.arcplex.tech 

## Prérequis

* Git
* Make
* Docker
* Nginx

### Installation de Git

```bash
sudo apt install git
```

### Installation de Make

```bash
sudo apt install make
```

### Installation de Docker

1. Ajouter le script `docker.sh` dans le projet.
2. Donner les droits d'exécution :

```bash
sudo chmod +x docker.sh
```

3. Lancer le script :

```bash
./docker.sh
```

4. Ajouter l'utilisateur au groupe Docker :

```bash
sudo usermod -aG docker "$USER"
```

5. Authentification à GHCR (GitHub Container Registry) :

```bash
echo "<TOKEN>" | docker login ghcr.io -u <USERNAME> --password-stdin
```


### Installation de Nginx

```bash
sudo apt install nginx
```

Vérifier l’état du service :

```bash
sudo systemctl status nginx
```

Activer Nginx au démarrage :

```bash
sudo systemctl enable nginx
```


## Installation de la base de données PostgreSQL

1. Configurer les variables d’environnement dans un fichier `.env`.
2. Lancer PostgreSQL :

```bash
make runpostgres
```

3. Connexion à PostgreSQL :

```bash
docker exec -it postgres bash
psql -U admin -d postgres
```

### Restauration d'une sauvegarde distante

1. Transférer le fichier SQL via SSH :

```bash
scp <chemin/fichier.sql> <user>@<host>:<répertoire de destination>
```

2. Restaurer la base dans le conteneur :

```bash
docker exec -i <nom_conteneur> psql -U <utilisateur> -d <base> < <chemin/fichier.sql>
```

### Connexion au rapository GitHub

1. Récupérer un jeton d'authentification.
2. Créer un fichier `askpass.sh` contenant le jeton :
```bash
#!/bin/bash
echo "github_pat_..."
```
3. Restreindre les droits en lecture/écriture/execution au propriétaire uniquement :

```bash
chmod 700 /etc/h2optimize/askpass.sh
```
4. Intéragir avec le repo distant en passant le token
```bash
GIT_ASKPASS=/etc/h2optimize/askpass.sh git pull
```

### Mise en place d’un cron pour sauvegardes automatiques

1. Configurer backup token 

2. Editer le crontab :

```bash
crontab -e
```

Ajouter la ligne suivante :

```cron
0 22 * * * /etc/h2optimize/deployement/backup.sh >> /etc/h2optimize/deployement/backup.log 2>&1
```

3. Vérifier que la tâche est bien enregistrée :

```bash
crontab -l
```

4. Consulter les logs :

```bash
cat /etc/h2optimize/deployement/backup.log
```


## Installation de pgAdmin

1. Configurer les variables d’environnement.
2. Lancer pgAdmin :

```bash
make runpgadmin
```

3. Accéder via navigateur : `http://localhost:8080`
   Identifiez-vous avec les identifiants définis dans `.env`.

4. Ajouter un serveur dans pgAdmin :

   * Name : (nom libre)
   * Host : `postgres` (ou IP du conteneur)
   * Port : `5432`
   * Username : `admin`
   * Password : `Changeme!1`


## Installation de Telegraf

1. Configurer les variables d’environnement.
2. Lancer le connecteur :

```bash
make runconnector
```

## Installation de Glances (optionnel)

1. Installer Python :

```bash
sudo apt install python3 python3.11-venv
```

2. Créer et activer un environnement virtuel :

```bash
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip setuptools wheel
```

3. Installer Glances :

```bash
pip install 'glances[all]'
```

4. Lancer Glances :

```bash
glances -w
```

5. Désactiver l’environnement :

```bash
deactivate
```

### Tout lancer en une commande

```
source /etc/h2optimize/venv/bin/activate && glances -w

```

## Configuration de Nginx

1. Editer la configuration :

```bash
sudo nano /etc/nginx/sites-available/default
```


Contenu recommandé :

```nginx
server {
    listen 80;
    server_name _;

    location /rc/ {
        proxy_pass http://localhost:81/;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    location /glances/ {
        auth_basic "Restricted Access";
        auth_basic_user_file /etc/nginx/.htpasswd;
        proxy_pass http://localhost:61208/;
        proxy_set_header Host $host;
        proxy_redirect off;
    }

    location /pgadmin/ {
        proxy_set_header X-Forwarded-Proto https;
        proxy_set_header Host $host;
        proxy_set_header X-Script-Name /pgadmin;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_pass http://localhost:8080/pgadmin/;
        proxy_redirect off;
    }
}
```

2. Vérifier la configuration :

```bash
sudo nginx -t
```

3. Appliquer les changements :

```bash
sudo systemctl restart nginx
```

4. Ajouter des crédentials
- Installer apache2-utils

```bash
sudo apt install apache2-utils
```
- Créer un fichier .htpasswd
```bash
sudo htpasswd -c /etc/nginx/.htpasswd <username>

>> New password:
>> Re-type new password:
>> Adding password for user <username>
``` 
