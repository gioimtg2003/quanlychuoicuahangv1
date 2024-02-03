Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Cyan='\033[0;36m'         # Cyan
Color_Off='\033[0m'       # Text Reset

sudo docker-compose build
sudo docker-compose up -d 
sleep 2
echo -e "${Green}RUN SUCCESS${Color_Off}"
sudo docker ps
echo "RUN SCRIPT SQL ===========>"
sleep 5
sudo docker exec -it mysql_database bash -c 'mysql -u root --password="$MYSQL_ROOT_PASSWORD" quanlychuoicuahang < /script_sql/database.sql'
echo -e "${Green}RUN SCRIPT SQL SUCCESS ===========>${Color_Off}"