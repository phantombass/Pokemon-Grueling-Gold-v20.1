#!/Data/Updater/bin/sh
version=`cat version`
files=`cat Data/Changes/${version}`
vers=`cat Data/Changes/versions`

for version in ${vers}
do
	before="${version}"
	echo 'mkfile() { mkdir -p "$(dirname "$1")" && touch "$1" ;  }' >> ~/.bashrc
	source ~/.bashrc
	mkfile Data/Changes/${before}/changes
	mkfile Data/Changes/${before}/deleted
	curl -o Data/Changes/${version}/changes https://raw.githubusercontent.com/phantombass/Pokemon-Grueling-Gold-v20.1/Release/Data/Changes/${version}/changes
	curl -o Data/Changes/${version}/deleted https://raw.githubusercontent.com/phantombass/Pokemon-Grueling-Gold-v20.1/Release/Data/Changes/${version}/deleted
done