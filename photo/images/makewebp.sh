#!/bin/bash

for i in *.jpeg; do
    printf "Convert $i\n"
    convert "$i" "${i%.jpeg}.jpg"
done

if [ ! -d webp ]; then
  mkdir -p webp;
fi

mkdir "webp"

for i in *.jpg; do
    printf "Resize $i\n"
    convert "$i" -resize 1920x1080 "$i"
    cwebp -q 60 "$i" -o "/webp/${i%.jpg}.webp"
done




