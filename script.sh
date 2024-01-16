docker compose build
docker compose up -d 
echo "RUN SUCCESS"
docker ps
sleep 1
docker exec -it mysql_database bash -c 'mysql -u root --password="my-password" quanlychuoicuahang < /script_sql/database.sql'