FROM php:apache

WORKDIR /var/www/treinamento

RUN apt-get update && apt-get install -y \
	vim \
	&& docker-php-ext-install pdo pdo_mysql bcmath \
	&& a2enmod rewrite \
	&& pecl install xdebug

COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY treinamento.conf /etc/apache2/sites-available/000-default.conf

COPY start-container.sh /usr/local/bin/start-container
RUN chmod +x /usr/local/bin/start-container