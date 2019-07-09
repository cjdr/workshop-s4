FROM cjdresco/workshop-php:7.2-dev


RUN docker-php-ext-install pcntl

COPY ./application /application

RUN php /usr/local/bin/composer -d memory_limit=-1 install
