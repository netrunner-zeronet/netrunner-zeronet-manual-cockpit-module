mkdir dist

for file in manual/*; do
    if [ -f $file ]
    then
      echo "$(basename "$file")"
      pandoc $file -s -o dist/"$(basename "$file" .md)".html --data-dir $PWD
    fi
done

cp manifest.json dist/manifest.json
cp -r manual/img/ dist/img/
