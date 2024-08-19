FROM php:8.0-apache

COPY . /var/www/html/

RUN docker-php-ext-install mysqli

RUN a2enmod rewrite

RUN sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

EXPOSE 80

CMD ["apache2-foreground"]
