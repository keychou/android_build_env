sudo apt-get remove samba-common smbclient samba
sudo apt-get install samba cifs-utils smbclient

# 1. add user : sudo smbpasswd -a <name_of_user_self_define>
# 2. find config file : testparm
# 3. add config 
#     [work]
#	path = /
#	guest ok = Yes
#	read only = No
#	valid users = klein
# 4. restart samba:  sudo smbd && sudo nmbd  OR sudo /etc/init.d/smbd restart  OR  sudo service smbd restart
# 5. mount samba under windows:  \\192.168.1.16\work
# 6. mount samba under Ubuntu:   sudo mount -t cifs $1  $2 -o username=klein,password=klein,uid=1000,gid=1000,iocharset=utf8,rw,dir_mode=0777,file_mode=0777 //192.168.26.245/work  warmhole

#aliyun:
#add: smb ports = 1315 1314
#sudo mount -t cifs $1  $2 -o username=root,password=root,port=1315,uid=1000,gid=1000,iocharset=utf8,rw,dir_mode=0777,file_mode=0777 //47.111.108.237/work warmhole
