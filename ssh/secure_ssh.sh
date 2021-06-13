1. Set a custom SSH port & Disable Root Login

/etc/ssh/sshd_config :

    >>Port XXX
    >>PermitRootLogin no

systemctl restart sshd
systemctl restart ssh

systemctl status sshd
systemctl status ssh

checking :
/usr/sbin/sshd -t
