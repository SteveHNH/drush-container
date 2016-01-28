# Drush Container

This container just runs drush and dumps the drupal install files into /var/www/html then quits. This is so drupal files can be configured and another drupal container can be started using these files by mounting the directory into the container. 

This is just step one in an attempt to automate drupal upgrades and rotate out containers. Not super familiar with drush, so working throught it to automate more of it. 

## Usage
  docker run -d -v /foo/bar:/var/www/html drush
