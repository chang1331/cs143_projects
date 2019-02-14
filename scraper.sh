dir="/home/neev/GDrive/College/Brown University/Classes/Spring 2019/CSCI 143/projects/"
wget -i urls.txt -P tmp/ -q -a logs.txt
for i in tmp/*.zip; do unzip "$i" -d "${i%%.zip}"; done
rm tmp/*.zip >> logs.txt
mv tmp/* ./
git add --all >> logs.txt
git commit -m "Updating files" >> logs.txt
git push >> logs.txt
rm -r tmp/ >> logs.txti
cp -r ./pro* $dir
mkdir tmp/
