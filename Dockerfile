# Stage 1: Build the Vue application
FROM node:16 as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Setup the PHP environment
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

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy existing application directory contents, excluding node_modules
COPY . /var/www
COPY --chown=www-data:www-data . /var/www

# Copy Vue build files to the appropriate location
COPY --from=build /app/public /var/www/public

# Change current user to www
USER www-data

# Expose port 10000 for Render
EXPOSE 10000

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
