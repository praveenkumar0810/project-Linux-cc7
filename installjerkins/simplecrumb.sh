this is smiple crumb file to execure a jenkins job form terminal


#crumb=$(curl -u "admin:admin" -s 'http://34.97.179.243:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')


where 
admin:admin > jenkins wweb console usename and password 
-s > for silent execution 
"http://* " > is the default crumb url

#curl -u "admin:admin" -H "$crumb" -X POST http://34.97.179.243:8080/job/ansible_dockfileBackup-Archival/build?delay=0sec


where,
http://34.97.179.243:8080/job/ansible_dockfileBackup-Archival/build?delay=0sec > is the build url of the jenkins job
