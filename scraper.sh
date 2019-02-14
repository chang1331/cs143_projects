wget -i urls.txt -P tmp/ -q -a logs.txt
for i in tmp/*.zip; do unzip "$i" -d "${i%%.zip}"; done
rm tmp/*.zip >> logs.txt
mv tmp/* ./
git add --all >> logs.txt
git commit -m "Updating files" >> logs.txt
git push >> logs.txt
rm -r tmp/ >> logs.txt
rm -r pro*
mkdir tmp/
