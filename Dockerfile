FROM sergeytykhonov/rpi-php:7.1-fpm-alpine

RUN apk update && \
    apk add nginx
    
        
WORKDIR /var/www/html

RUN mkdir -p /run/nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY docker/jirafeau.conf /etc/nginx/conf.d/jirafeau.conf


RUN rm -rf /var/cache/apk/*
CMD chown -R www-data:www-data /var/www/html

ENTRYPOINT php-fpm -D && nginx -g "daemon off;"
