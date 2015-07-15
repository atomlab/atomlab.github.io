#Build
tinker -b 

# Deploy source
git pull && 
git add * &&
git commit -a -m "update source"
git pull && git push

#Deploy html to github pages
cd ../atomlab.github.io &&
git pull &&
cd -
cp -a blog/html/* ../atomlab.github.io/ && 
cd ../atomlab.github.io && 
git pull &&
git add * && 
git commit -a -m "update site" &&
git pull && git push && 
cd -
