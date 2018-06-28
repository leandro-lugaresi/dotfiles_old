#!/bin/sh

mkdir -p ~/.local/share/fonts/
curl -L -s -o /tmp/anon.zip "http://www.marksimonson.com/assets/content/fonts/AnonymousPro-1.002.zip"
unzip -u /tmp/anon.zip -d /tmp
cp -n /tmp/AnonymousPro-1.002.001/*.ttf ~/.local/share/fonts

for type in Bold Light Medium Regular Retina; do
    wget -q -nc -O ~/.local/share/fonts/FiraCode-${type}.ttf \
    "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true";
done
rm -rf /tmp/AnonymousPro-1.002.001
