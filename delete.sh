#!/Data/Updater/bin/sh
link=`cat version`
deleted=`cat Data/Changes/${link}/deleted`
if [ -s ${deleted} ]; then
      echo "No files to delete"
else
      for del in ${deleted[@]}
      do
            echo ${del}
      done
fi