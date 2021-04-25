#!/bin/bash

d="$(date +"%d-%b-%Y")"

mkdir /backup-drive/manual/"$d"/


docker exec db /usr/bin/mysqldump -u root --password='mysqlrootpassword' wordpress > /backup-drive/manual/"$d"/backup.sql

docker exec -it  wordpress tar -cpvzf /opt/wordpress_backup1.tar.gz /var/www/html/
docker cp wordpress:/opt/wordpress_backup1.tar.gz /backup-drive/manual/"$d"/wordpress_backup1.tar.gz
