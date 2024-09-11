hashcat docker
# hashtopus

FROM ubuntu:latest

ENV dl_link http://hashtopus.nech.me/beta/hashtopus147.7z
ENV db_root_pw v3rys3cur3!!1!
ENV db_host localhost
ENV db_pw s3cur3!!1!
ENV db_user hashtopus
ENV db_name hashtopus

RUN apt-get -y update
RUN apt-get -y install php5 php5-fpm wget p7zip-full nginx

RUN bash -c "debconf-set-selections <<< 'mysql-server mysql-server/root_password password $db_root_pw'"
RUN bash -c "debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password $db_root_pw'"

RUN apt-get -y install mysql-server
RUN apt-get -y remove apache2

RUN wget $dl_link && mv *hashtopus* hashtopus.7z
RUN mkdir hashtopus && mv hashtopus.7z hashtopus && cd hashtopus && 7za e hashtopus.7z && rm hashtopus.7z
RUN mkdir -p /var/www && mv hashtopus /var/www
RUN chown -R www-data:www-data /var/www

WORKDIR /var/www/hashtopus
RUN ls -la
RUN sed -i "s/dbhost=\"localhost/dbhost=\"$db_host/g" dbconfig.php
RUN sed -i "s/dbuser=\"database user/dbuser=\"$db_user/g" dbconfig.php  
RUN sed -i "s/dbpass=\"database password/dbpass=\"$db_pw/g" dbconfig.php  
RUN sed -i "s/dbname=\"database name/dbname=\"$db_name/g" dbconfig.php  

RUN mv hashtopus.sql hashtopus_part2.sql
RUN echo "CREATE DATABASE $db_name;" >> tmp_hashtopus.sql
RUN echo "CREATE USER $db_user@$db_host IDENTIFIED BY \"$db_pw\";" >> tmp_hashtopus.sql
RUN echo "GRANT ALL PRIVILEGES ON * . * TO $db_user@$db_host;" >> tmp_hashtopus.sql
RUN echo "use hashtopus;" >> tmp_hashtopus.sql
RUN cat tmp_hashtopus.sql >> hashtopus.sql && cat hashtopus_part2.sql >> hashtopus.sql

RUN rm /etc/nginx/sites-enabled/default && rm /etc/nginx/sites-available/default
ADD hashtopus_nginx_conf /etc/nginx/sites-available/hashtopus
RUN ln -s /etc/nginx/sites-available/hashtopus /etc/nginx/sites-enabled/hashtopus

WORKDIR /

RUN apt-get -y install php5-mysql
ADD startup.sh startup.sh
RUN chmod +x startup.sh

CMD /startup.sh || true; nginx -g 'daemon off;'