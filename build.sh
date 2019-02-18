mkdir dist

for file in manual/*; do
    echo "$(basename "$file")"
    pandoc $file -s -o dist/"$(basename "$file" .md)".html --data-dir $PWD
done
