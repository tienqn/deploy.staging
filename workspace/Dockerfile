FROM dockerangle/staging:latest

LABEL maintainer="Tien Pham <tiens8acc@gmail.com>"

WORKDIR /var/www

RUN composer install \
&& cp .env.example .env \
&& php artisan key:generate \
&& chmod -R 777 storage

EXPOSE 9000
