#!/bin/bash

pwd
cd stage1
mkdir {f4,f5,f6}
cd f5
touch {one.json,two.json,one.txt,two.txt,three.txt}
ls -la
cd ..
mv f5/{one.json,two.txt} f4
cp f4/two.txt f6
find . -name "three.txt"
date



