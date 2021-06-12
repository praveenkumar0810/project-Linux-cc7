#ssh-keygen -t rsa -b 4096 -C <username>

ssh-keygen -t rsa -b 4096 -C praveenkumar

##################################################
Error


ssh ssh-keygen 	https://github.com/praveenkumarv-github/project-Linux-centos7/tree/master/ssh



PS C:\Users\praveen\sshkey> ssh.exe -i .\id_rsa -p 777 praveenkumar_mail08101997@34.97.117.142
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions for '.\\id_rsa' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.
Load key ".\\id_rsa": bad permissions
praveenkumar_mail08101997@34.97.117.142: Permission denied (publickey).

solution : 
https://superuser.com/questions/1296024/windows-ssh-permissions-for-private-key-are-too-open
