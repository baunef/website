#!/bin/bash


echo '<html>'> output.html

for i in *.jpg; do
    printf "Append $i\n"
    text='<a href="images/full/'"$i"'" class="big"><img src="images/webp/'"${i%.jpg}"'.webp" alt="" title=""/></a>'
    echo $text
    echo $text >> output.html
done

echo "</html" >> output.html


