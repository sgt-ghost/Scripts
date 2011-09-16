#!/bin/bash
wget $1 -O thread
grep -o "http://images.4chan.org/[a-z]*/src/[0-9]*.jpg" thread | sort -u | xargs wget
rm thread
