#!/bin/bash

cd full/

myarray=(`find ./ -maxdepth 1 -name "*.jpeg"`)
if [ ${#myarray[@]} -gt 0 ]; then 
	echo true
	for i in *.jpeg; do
    	printf "Convert $i\n"
    	convert "$i" "${i%.jpeg}.jpg"
	done
else
	echo false
fi

for i in *.jpg; do
    printf "Resize $i\n"
    convert "$i" -resize 1920x1080 "$i"
    printf "Create ${i%.jpg}.webp\n"
    cwebp -q 60 "$i" -o "../webp/${i%.jpg}.webp"
done


