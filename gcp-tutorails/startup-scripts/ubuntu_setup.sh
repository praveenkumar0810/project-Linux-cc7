echo "admin" | sudo passwd root --stdin
sudo apt -y install bash-comple*
sudo apt -y install git
sudo apt -y install htop
cat <<EOF >> /root/test.tst
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
EOF
