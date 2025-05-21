# Dockerfile
FROM php:8.1-apache

# Enable mysqli extension
RUN docker-php-ext-install mysqli

# Copy project files to Apache web root
COPY . /var/www/html/

# Set appropriate permissions
RUN chown -R www-data:www-data /var/www/html/

EXPOSE 80
