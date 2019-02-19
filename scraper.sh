wget -i urls.txt -P tmp/ -q -a logs.txt
for i in tmp/*.zip; do unzip "$i" -d "${i%%.zip}"; done
rm tmp/*.zip*
rm projects/proj*
mkdir projects/
mv tmp/* ./projects/
git add --all 
git commit -m "Updating files" 
git push 
rm -r tmp/
mkdir tmp/
