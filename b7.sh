#!/bin/bash

gcc test.c -o test

gcc test.c -o test32 -m32

gcc -fno-stack-protector test.c -o test_nocanary
gcc -fno-stack-protector test.c -o test32_nocanary -m32

gcc -z execstack test.c -o test_nonx
gcc -z execstack test.c -o test32_nonx -m32

gcc -Wl,-z,relro test.c -o test_prelro
gcc -Wl,-z,relro test.c -o test32_prelro -m32


gcc -Wl,-z,relro,-z,now test.c -o test_fulrelro
gcc -Wl,-z,relro,-z,now test.c -o test32_fulrelro -m32


gcc -z norelro test.c -o test_norelro 
gcc -z norelro test.c -o test32_norelro -m32


gcc -fPIE -pie test.c -o test_PIE 
gcc -fPIE -pie test.c -o test32_PIE -m32

gcc test.c -o test_noPIE -no-pie
gcc test.c -o test32_noPIE -no-pie -m32

