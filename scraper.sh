wget -i urls.txt -P tmp/ -q -a logs.txt
for i in tmp/*.zip; do unzip "$i" -d "${i%%.zip}"; done
rm tmp/*.zip >> logs.txt
cd tmp/
git add --all >> logs.txt
git commit -m "Updating files" >> logs.txt
git push >> logs.txt
cd ..
rm -r tmp/ >> logs.txt
mkdir tmp/
