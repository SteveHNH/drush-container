FROM httpd:latest
MAINTAINER Stephen Adams <tsadams@gmail.com>
ENV PATH $PATH:/drush
RUN apt-get install -y wget php php-pdo php-dom php-gd which mysql && wget https://ftp.drupal.org/files/projects/drush-8.x-6.0-rc4.tar.gz && tar -xzvf drush* 
VOLUME /var/www/html
WORKDIR /var/www/html
ENTRYPOINT ["/drush/drush", "dl", "drupal"]
