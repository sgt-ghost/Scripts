#!/bin/bash
# Note: This only does individual pages. After the first page, you will have to put each url in quotes (" ")
wget $1 -O mainpage
grep -hro "http://g.e-hentai.org/s/[a-z[0-9]*/[0-9]*-[0-9]*" mainpage | xargs wget --wait=2 -O subpage
grep -hro "http://[0-9].*.jpg\"" subpage | sed -e 's/amp\;//g' | sed -e 's/\"//' | xargs wget --wait=2
rename 's/image.*n\=//' *.jpg
rm *page
