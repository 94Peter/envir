FROM phalconphp/php-fpm:7-min

RUN mkdir -p /var/cache/apt/archives/partial
RUN mkdir -p /var/log/apt
RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev libpng-dev

RUN docker-php-ext-install zip gd pdo pdo_mysql
COPY php.ini /usr/local/etc/php/
COPY phpunit-6.1.1.phar /usr/local/bin/
RUN mv /usr/local/bin/phpunit-6.1.1.phar /usr/local/bin/phpunit
RUN chmod 777 /usr/local/bin/phpunit

RUN rm -R /var/cache/apt/archives/partial
RUN rm -R /var/log/apt
