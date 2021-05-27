docker exec -it <container-name> bash
docker exec -it tri-mongodb bash #

mongo -u <your username> -p <your password> --authenticationDatabase <your database name>
mongo -u triadmin -p admin01 --authenticationDatabase library #
mongo -u triadmin --authenticationDatabase library 

    show dbs	##list all the databases	
    use library	#3switch to database	
            
    db.books.insert({"name":"MCA books"})		
    db.books.find().pretty()		

##backing script
docker exec tri-mongodb sh -c 'mongodump -d library -u triadmin -p admin01 --archive' > /opt/db.dump #

#mount bucket 
gcsfuse tristorage /backup-drive/manual/
fusermount tristorage

 #backup script
bash /tridata/mongodb/bkp_script/databasebackup.sh