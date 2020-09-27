FROM php:8.0.0beta4-alpine3.12
WORKDIR /var/www/html

ENTRYPOINT ["php", "-S", "0.0.0.0:80"]
