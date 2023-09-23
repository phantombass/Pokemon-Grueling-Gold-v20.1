#!/Data/Updater/bin/sh
version=`cat version`
files=`cat Data/Changes/${version}`
curl -o Data/Changes/${version}/changes https://raw.githubusercontent.com/phantombass/Pokemon-Grueling-Gold/Release/${files}/changes
curl -o Data/Changes/${version}/deleted https://raw.githubusercontent.com/phantombass/Pokemon-Grueling-Gold/Release/${files}/deleted
curl -o "version_temp" https://raw.githubusercontent.com/phantombass/Pokemon-Grueling-Gold/master/version
link=`cat version_temp`
echo 'mkfile() { mkdir -p "$(dirname "$1")" && touch "$1" ;  }' >> ~/.bashrc
source ~/.bashrc
mkfile Data/Changes/${link}/changes
mkfile Data/Changes/${link}/deleted
rm version_temp