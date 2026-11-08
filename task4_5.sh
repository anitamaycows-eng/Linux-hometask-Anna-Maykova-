#!/bin/bash

sed 's/.*/\L&/g' file.txt | sed 's/[.,:-;"]//g' > result

awk '{
    for (i = 1; i <= NF; i++)
        freq[$i]++
}
END {
    for (word in freq)
        print freq[word], word
}' result | sort -rn | head -5 | awk '{print $2 ": " $1}' > top.txt
cat top.txt
awk '{print $1}' top.txt > only_w0.txt
sed "s/://g" only_w0.txt > only_w.txt

for line in $(cat only_w.txt)
do
  curl -s "https://api.dictionaryapi.dev/api/v2/entries/en/$line" \
  | grep -o '"definition":"[^"]*"' | head -n 1 | sed -e 's/^"definition":"//' -e 's/"$//'
done

#grep -o '"definition":"[^"]*"' api.txt | head -n 1 | sed 's/^"definition":"//; s/"$//'

