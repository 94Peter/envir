FROM phalconphp/php-fpm:7-min

RUN docker-php-ext-install pdo pdo_mysql
COPY php.ini /usr/local/etc/php/
COPY phpunit-6.1.1.phar /usr/local/bin/
RUN mv /usr/local/bin/phpunit-6.1.1.phar /usr/local/bin/phpunit
