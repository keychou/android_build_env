sudo apt-get update 

#base tools of ubuntu
sudo apt install net-tools gitk tree vim terminator synergy expect minicom cutecom
 
sudo apt-get install openjdk-8-jdk 
sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip

#install adb and fastboot
sudo apt-get install android-tools-adb android-tools-fastboot

#install ssh server in order to enable ssh login and scp
sudo apt-get install openssh-server openssh-client

#install python
sudo apt-get install python-dev python-protobuf protobuf-compiler python-virtualenv python-pip

#install libssl-dev to fix such error "fatal error: openssl/opensslv.h: No such file or directory"
sudo apt-get install libssl-dev

git config --global user.email "klein.zhou@quectel.com"
git config --global user.name "klein.zhou"
git config --global core.editor gedit


