#!/bin/sh

echo "32scan---------------------------" >> result32.txt

echo "Default: " >> result.txt
./checksec --file=test32 >> result32.txt


echo "nocanary " >> result.txt
./checksec --file=test32_nocanary >> result32.txt



echo "nonx " >> result.txt
./checksec --file=test32_nonx >> result32.txt


echo "relro:p " >> result.txt
./checksec --file=test32_prelro >> result32.txt


echo "relro:f " >> result.txt
./checksec --file=test32_fulrelro >> result32.txt


echo "relro:n " >> result.txt
./checksec --file=test32_norelro >> result32.txt


echo "PIE" >> result.txt
./checksec --file=test32_PIE >> result32.txt


echo "PIE:no " >> result.txt
./checksec --file=test32_noPIE >> result32.txt

cat result32.txt
