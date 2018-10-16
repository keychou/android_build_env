sudo dpkg -i openjdk-7-* libjpeg62-turbo* libfontconfig1* fontconfig-config*
sudo apt --fix-broken install
sudo dpkg -i openjdk-7-* libjpeg62-turbo* libfontconfig1* fontconfig-config*
update-java-alternatives --list

#check default version of java and javac
java -version
javac -version

#sudo update-java-alternatives -s <version_of_jdk>

#used to choose java version manually
sudo update-alternatives --config java

#used to choose javac version manually
sudo update-alternatives --config javac
