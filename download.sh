#!/Data/Updater/bin/sh
version=`cat version`
files=`cat Data/Changes/${version}/changes`
for file in ${files[@]}
do
  echo ${file}
  curl -o ${file} https://raw.githubusercontent.com/phantombass/Pokemon-Grueling-Gold-v20.1/Release/${file}
done