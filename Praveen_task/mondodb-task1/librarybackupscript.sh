#!/bin/bash
d="$(date +"%d-%b-%Y")"
mkdir /backup-drive/manual/"$d"/
docker exec tri-mongodb sh -c 'mongodump -d library -u triadmin -p admin01 --archive' > /backup-drive/manual/"$d"/librarydb.dump
ls