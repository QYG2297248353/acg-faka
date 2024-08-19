FROM php:8.0-fpm-alpine

WORKDIR /var/www/html

COPY . /var/www/html

RUN docker-php-ext-install mysqli

EXPOSE 9000

CMD ["php-fpm"]
