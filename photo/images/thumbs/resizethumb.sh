#!/bin/bash

for i in *.jpeg; do
    printf "Resize $i\n"
    convert "$i" "$i.jpg"
done

for i in *.jpg; do
    printf "Resize $i\n"
    convert "$i" -resize 480 "$i"
done


