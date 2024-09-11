#!/bin/bash

service php5-fpm start
service mysql start && echo "sql-errors are normal :S"  && mysql -h localhost -u root -p$db_root_pw < /var/www/hashtopus/hashtopus.sql || exit 0
