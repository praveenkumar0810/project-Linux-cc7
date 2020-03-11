yum install java-1.8.0-openjdk-devel -y
yum install curl -y
yum install java-1.8.0-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --reload
firefox &&
