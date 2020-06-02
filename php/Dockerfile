FROM php:5.5.38-apache
RUN sed -i "s/httpredir.debian.org/mirrors.aliyun.com/g" /etc/apt/sources.list \
  && sed -i "s/security.debian.org/mirrors.aliyun.com\/debian-security/g" /etc/apt/sources.list \
  && apt-get update \
  &&  apt-get install -y p7zip-full \
  &&  apt-get install -y libfreetype6-dev \
  && apt-get install -y libjpeg62-turbo-dev \
  &&  apt-get install -y libpng-dev 
COPY ./index.php    /var/www/html

COPY ./extensions /tmp/extensions
WORKDIR /tmp/extensions
RUN chmod +x install.sh \
  && sh install.sh \
  && rm -rf /tmp/extensions

# Install composer and change it's cache home
RUN curl -o /usr/bin/composer https://mirrors.aliyun.com/composer/composer.phar \
  && chmod +x /usr/bin/composer
ENV COMPOSER_HOME=/tmp/composer