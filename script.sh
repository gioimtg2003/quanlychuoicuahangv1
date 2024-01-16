docker compose build
docker compose up -d 
echo "RUN SUCCESS"
docker ps
sleep 2
echo "RUN SCRIPT SQL ===========>"
docker exec -it mysql_database bash -c 'mysql -u root --password="$MYSQL_ROOT_PASSWORD" quanlychuoicuahang < /script_sql/database.sql'
echo "RUN SCRIPT SQL SUCCESS ===========>"

sleep 1
docker images
#tag
echo "TAG IMAGE ==============>"
docker tag quanlychuoicuahang-php:latest gioimtg2003/project-image-php:v1.1
docker tag quanlychuoicuahang-nginx:latest gioimtg2003/project-image-nginx:v1.1
docker tag quanlychuoicuahang-mysql:latest gioimtg2003/project-image-mysql:v1.1

docker push gioimtg2003/project-image-php:v1.1
docker push gioimtg2003/project-image-ngix:v1.1
docker push gioimtg2003/project-image-mysql:v1.1



