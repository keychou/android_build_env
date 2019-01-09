#install wine on Ubuntu18.04
#Reading package lists... Done
#Building dependency tree       
#Reading state information... Done
#wine-stable is already the newest version (3.0-1ubuntu1).
#You might want to run 'apt --fix-broken install' to correct these.
#The following packages have unmet dependencies:
# ca-certificates : Depends: openssl (>= 1.1.0)
#E: Unmet dependencies. Try 'apt --fix-broken install' with no packages (or specify a solution).
#
#
#ubuntu18.04 wine (wine-3.0) depends on openssl (>= 1.1.0), but compile android source code of android7.1.2 need openssl 1.0.1
sudo apt-get update
sudo apt install wine-stable
