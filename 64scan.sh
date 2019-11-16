#!/bin/sh

echo "64scan---------------------------" >> result.txt

echo "Default: " >> result.txt
./checksec --file=test >> result.txt

echo "nocanary " >> result.txt
./checksec --file=test_nocanary >> result.txt



echo "nonx " >> result.txt
./checksec --file=test_nonx >> result.txt


echo "relro:p " >> result.txt
./checksec --file=test_prelro >> result.txt


echo "relro:f " >> result.txt
./checksec --file=test_fulrelro >> result.txt


echo "relro:n " >> result.txt
./checksec --file=test_norelro >> result.txt


echo "PIE" >> result.txt
./checksec --file=test_PIE >> result.txt


echo "PIE:no " >> result.txt
./checksec --file=test_noPIE >> result.txt


cat result.txt

