Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Cyan='\033[0;36m'         # Cyan
Color_Off='\033[0m'       # Text Reset

docker rm -f $(docker ps -qa)
docker compose build
docker compose up -d 
echo -e "${Green}RUN SUCCESS${Color_Off}"
docker ps
sleep 2
echo "RUN SCRIPT SQL ===========>"
docker exec -it mysql_database bash -c 'mysql -u root --password="$MYSQL_ROOT_PASSWORD" quanlychuoicuahang < /script_sql/database.sql'
echo -e "${Green}RUN SCRIPT SQL SUCCESS ===========>${Color_Off}"

sleep 1
docker images
#tag
echo "TAG IMAGE ==============>"
docker tag quanlychuoicuahang-php:latest gioimtg2003/project-image-php:$1
docker tag quanlychuoicuahang-nginx:latest gioimtg2003/project-image-nginx:$1
docker tag quanlychuoicuahang-mysql:latest gioimtg2003/project-image-mysql:$1

echo ">>>>>>>>>>PUSH IMAGE PHP<<<<<<<<<<"
docker push gioimtg2003/project-image-php:v1.1
echo -e "${Green}>>>>>>>>>>PUSH IMAGE PHP SUCCESS<<<<<<<<<<${Color_Off}"
echo ">>>>>>>>>>PUSH IMAGE NGINX<<<<<<<<<<"
docker push gioimtg2003/project-image-nginx:v1.1
echo -e "${Green}>>>>>>>>>>PUSH IMAGE NGINX SUCCESS<<<<<<<<<<${Color_Off}"
echo ">>>>>>>>>>PUSH IMAGE MYSQL<<<<<<<<<<"
docker push gioimtg2003/project-image-mysql:v1.1
echo -e "${Green}>>>>>>>>>>PUSH IMAGE MYSQL SUCCESS<<<<<<<<<<${Color_Off}"




