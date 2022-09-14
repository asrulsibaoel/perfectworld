FROM ossperfectworld/perfect-world-website-register:latest as pw_web_server
LABEL author="asrulsibaoel"

WORKDIR /var/www/html

COPY CPW CPW
COPY apache2.conf /etc/apache2/apache2.conf

RUN apt update
RUN apt install -y mariadb-client wget curl \
    ca-certificates build-essential software-properties-common \
    default-jre default-jdk curl libsvn-java unzip git

RUN wget --no-check-certificate https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.zip -P /tmp/
RUN unzip /tmp/phpMyAdmin-latest-all-languages.zip -d /var/www/html/
RUN mv /var/www/html/phpMyAdmin* /var/www/html/phpmyadmin
RUN cp /var/www/html/phpmyadmin/config.sample.inc.php /var/www/html/phpmyadmin/config.inc.php
RUN sed -i "s/^\$cfg\['blowfish_secret'\] = '';/\$cfg['blowfish_secret'] = 'secret_shitz';/g" /var/www/html/phpmyadmin/config.inc.php
RUN chmod 660 /var/www/html/phpmyadmin/config.inc.php
RUN chown -R www-data:www-data /var/www/html/phpmyadmin
