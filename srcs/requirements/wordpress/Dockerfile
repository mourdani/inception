From	debian:10

# Update and install wordpress
RUN apt update; apt install wget -y

RUN mkdir -p /var/www/html/
RUN wget http://wordpress.org/latest.tar.gz 
RUN tar -xzf latest.tar.gz
RUN rm -f latest.tar.gz
RUN cp -r wordpress/* /var/www/html/

# install php
RUN wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -; apt update
RUN apt install php php-fpm -y
