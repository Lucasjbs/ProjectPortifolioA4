# Stage 1: Install PHP dependencies with Composer
FROM composer:latest as composer
WORKDIR /app
COPY composer.json composer.lock ./
COPY . .
RUN composer install --no-dev --optimize-autoloader

# Stage 2: Build the Vue application
FROM node:16 as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 3: Setup the PHP environment
FROM php:8.2-fpm

# Set working directory
WORKDIR /var/www

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    npm

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Copy existing application directory contents
COPY . /var/www
COPY --chown=www-data:www-data . /var/www

# Install Composer
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Copy Composer dependencies
COPY --from=composer /app/vendor /var/www/vendor

# Copy Vue build files to the appropriate location
COPY --from=build /app/public /var/www/public

# Change current user to www
USER www-data

# Expose port 10000 for Render
EXPOSE 10000

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
