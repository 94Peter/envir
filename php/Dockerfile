FROM phalconphp/php-fpm:7-min

RUN mkdir -p /var/cache/apt/archives/partial
RUN mkdir -p /var/log/apt

RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev libpng-dev libmcrypt-dev libfreetype6-dev libjpeg62-turbo-dev libpng12-dev

RUN docker-php-ext-install zip pdo pdo_mysql mcrypt iconv && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install gd
COPY phpunit-6.1.1.phar /usr/local/bin/
RUN mv /usr/local/bin/phpunit-6.1.1.phar /usr/local/bin/phpunit
RUN chmod 777 /usr/local/bin/phpunit

RUN rm -R /var/cache/apt/archives/partial
RUN rm -R /var/log/apt
