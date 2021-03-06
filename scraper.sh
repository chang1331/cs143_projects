#!/bin/bash

# download and rename the files
while IFS=' ' read -r url name; do
    wget -O "$name" -a logs.txt "$url"
done < urls.txt

# unzip files
for i in tmp/*.zip; do unzip "$i" -d "${i%%.zip}"; done

# clean things up
rm tmp/*.zip*
rm -r projects/proj*
mkdir -p projects/
mv tmp/* ./projects/

# push things to github
git add -A 
git commit -m "Updating files" 
git push 

# clean up again
rm -r tmp/
mkdir -p tmp/
