
# About me
tienpham tiens8acc@gmail.com

# Deploy staging

docker-compose down --rmi all --volumes
docker rmi dockerangle/staging
docker-compose build
docker-compose up -d
docker exec -ti workspace_staging sh
composer install
cp .env.example .env
php artisan key:generate
chmod -R 777 storage
exit



