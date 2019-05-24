#!/bin/bash

sed 's/a/A/' data.csv > out.1

sed 's/c/C/' out.1 > out.2

sed 's/n/N/' out.2 > out.3

sed 's/\([0-9][0-9]\)\/\([0-9][0-9]\)\/\([0-9][0-9]\)/20\3-\2-\1/' out.3 > out.4

sed 's/\([0-9]\)\/\([0-9]\)\/\([0-9][0-9][0-9][0-9]\)/\3-0\2-0\1/' out.4 > out.5

sed 's/;;/;\\N;/' out.5 > out.6

sed 's/;\r/;\\N\r/' out.6 > out.7

sed 's/;N/;\\N/' out.7 > out.8

sed 's/,/./g' out.8 > out.9

sed 's/;/,/g' out.9 > out.10

cp out.10 Resultado

rm out*

cat Resultado

exit
