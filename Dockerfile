FROM debian:jessie
MAINTAINER DNA Dev <dev@dna.co.nz>

ADD known_hosts         /root/.ssh/known_hosts
ADD _ss_environment.php /var/www/_ss_environment.php

RUN apt-get update && apt-get -qqy install wget curl make git-core php5 mysql-client-5.5 php5-mysqlnd php5-mcrypt php5-tidy php5-curl php5-gd php-pear nodejs npm

#  - Phpunit, Composer, Phing
RUN wget https://phar.phpunit.de/phpunit-3.7.37.phar && \
  chmod +x phpunit-3.7.37.phar && \
  mv phpunit-3.7.37.phar /usr/local/bin/phpunit && \
  wget https://getcomposer.org/composer.phar && \
  chmod +x composer.phar && \
  mv composer.phar /usr/local/bin/composer && \
  pear channel-discover pear.phing.info && \
  pear install phing/phing

# Install NPM
RUN npm install -g grunt-cli gulp bower

WORKDIR /var/www

ENV LANG en_US.UTF-8
ENV SOLR_PORT 8984
