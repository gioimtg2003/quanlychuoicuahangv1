echo "=====>>>>>>>>> Create folder <<<<<<<<<====="
mkdir -p web-app/{mysql,php,nginx}
echo $pwd
echo "FROM gioimtg2003/project-image-php:v1.1" > ./web-app/php/Dockerfile
echo "FROM gioimtg2003/project-image-nginx:v1.1" > ./web-app/nginx/Dockerfile
echo "FROM gioimtg2003/project-image-mysql:v1.1" > ./web-app/mysql/Dockerfile

