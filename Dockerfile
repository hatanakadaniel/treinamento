FROM php:apache

WORKDIR /var/www/treinamento

RUN apt-get update && apt-get install -y \
	vim \
	&& docker-php-ext-install pdo pdo_mysql bcmath \
	&& a2enmod rewrite

EXPOSE 80

COPY index.php .
COPY treinamento.conf /etc/apache2/sites-available/000-default.conf