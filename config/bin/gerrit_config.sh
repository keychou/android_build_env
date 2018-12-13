echo "ssh-keygen -t rsa  -C klein.zhou@quectel.com"
echo "cat ~/.ssh/id_rsa.pub  && add it to gerrit"
echo "sudo gedit /etc/ssh/ssh_config"
echo "on ubuntu18.04 append following to /etc/ssh/ssh_config:
      KexAlgorithms=+diffie-hellman-group1-sha1
      Ciphers aes128-ctr,aes192-ctr,aes256-ctr,aes128-cbc,3des-cbc,aes192-cbc,aes256-cbc"
