mkdir dist

# First generate the manual general toc
pandoc manual/manual.md -s -o dist/manual.html --template=templates/left-toc.html

for file in manual/*; do
    if [ -f $file ]
    then
      if [ "$(basename "$file")" == "manual.md" ]; then
        continue
      fi
      echo "$(basename "$file")"
      pandoc $file -s --toc -o dist/"$(basename "$file" .md)".html --data-dir $PWD -B dist/manual.html
    fi
done

cp manifest.json dist/manifest.json
cp -r manual/img/ dist/img/
cp -r assets/ dist/assets/
