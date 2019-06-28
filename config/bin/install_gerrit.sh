#install openjdk8

sudo apt-get install nginx apache2-utils

#switch to gerrit user and install gerrit
echo "#######Add gerrit user#######
      sudo adduser gerrit
      su gerrit
      cd ~"

#mkdir repository_base install 
#wget https://gerrit-releases.storage.googleapis.com/gerrit-3.0.0.war
#java -jar ./gerrit-3.0.0.war init -d ./install



echo "htpasswd -c ./install/etc/gerrit.passwd admin"

#sudo /etc/init.d/nginx restart
#./install/etc/gerrit.sh restart

echo "
/etc/nginx/conf.d/gerrit.conf 
server {
     listen *:8090;
     server_name 172.18.104.244;
     allow   all;
     deny    all;

     auth_basic \"Welcomme to Gerrit Code Review Site!\";
     auth_basic_user_file /home/gerrit/install/etc/gerrit.passwd;
 
     location / {
        proxy_pass  http://172.18.104.244:8085;
        proxy_set_header X-Forwarded-For $remote_addr;
        proxy_set_header Host $host;
     }
   }
"


echo "
$ cat etc/gerrit.config 
[gerrit]
	basePath = /home/gerrit/repository_base
	canonicalWebUrl = http://localhost:8085/
	serverId = c6429dee-fc3c-4bc6-b2a1-28cdff9a420c
[container]
	javaOptions = \"-Dflogger.backend_factory=com.google.common.flogger.backend.log4j.Log4jBackendFactory#getInstance\"
	javaOptions = \"-Dflogger.logging_context=com.google.gerrit.server.logging.LoggingContext#getInstance\"
	user = gerrit
	javaHome = /usr/lib/jvm/java-8-openjdk-amd64/jre
[index]
	type = LUCENE
[auth]
	type = HTTP
[receive]
	enableSignedPush = true
[sendemail]
	smtpServer = localhost
[sshd]
	listenAddress = *:29418
[httpd]
	listenUrl = proxy-https://*:8085/
[cache]
	directory = cache

"


echo "java -jar /home/gerrit/install/bin/gerrit.war reindex --index changes
java -jar /home/gerrit/install/bin/gerrit.war reindex --index groups
java -jar /home/gerrit/install/bin/gerrit.war reindex --index accounts"


#https://luomuxiaoxiao.com/?p=595
#https://blog.csdn.net/u013377887/article/details/79826348
