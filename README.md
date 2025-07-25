installer git make 

installer docker 

ajouter docker.sh 
donne droit execution sudo chmod +x docker.sh
executrer ./docker.sh

echo "<TOKEN>" | docker login ghcr.io -u <USERNAME> --password-stdin

ajouter .env, .env.local et Makefile 

sudo apt install build-essential
faire un make runpostgres lance postgres 

fait un make runpgadmin lance pgadmin 

ce connecter sur postgres 
docker exec -it postgres bash 
psql -U admin -d postgres

ce connecter a pgadmin 
aller sur localhost:8080
rentrer email password pgadmin 
enregistre la base postgres host postgres port 5432


lancer telegraf 
make runconnector

joachim@htc-11:~/project$ sudo apt install python3
joachim@htc-11:~/project$ sudo apt install python3.11-venv


python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip setuptools wheel
pip install 'glances[all]'

python -m pip freeze > requirements.txt
python -m pip install -r requirements.txt


sudo nano /etc/nginx/sites-available/default
server {
    listen 80;
    server_name _;

    location /glances/ {

        proxy_set_header Host $host;
        proxy_pass http://localhost:61208/;
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




sudo nginx -t
sudo systemctl restart nginx


scp "C:/Users/rapha/Desktop/Hetic/web3/h2opimize/database/backup/recorded_backup_250720251413.sql" joachim@admin-hetic.arcplex.tech:/etc/h2optimize
docker exec -i postgres_prod psql -U admin -d recorded < /etc/h2optimize/production/recorded_backup_250720251413.sql