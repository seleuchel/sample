#!/bin/bash

gcc-4.8 test.c -o test

gcc-4.8 test.c -o test32 -m32

gcc-4.8 -fno-stack-protector test.c -o test_nocanary
gcc-4.8 -fno-stack-protector test.c -o test32_nocanary -m32

gcc-4.8 -z execstack test.c -o test_nonx
gcc-4.8 -z execstack test.c -o test32_nonx -m32

gcc-4.8 -Wl,-z,relro test.c -o test_prelro
gcc-4.8 -Wl,-z,relro test.c -o test32_prelro -m32


gcc-4.8 -Wl,-z,relro,-z,now test.c -o test_fulrelro
gcc-4.8 -Wl,-z,relro,-z,now test.c -o test32_fulrelro -m32


gcc-4.8 -z norelro test.c -o test_norelro 
gcc-4.8 -z norelro test.c -o test32_norelro -m32


gcc-4.8 -fPIE -pie test.c -o test_PIE 
gcc-4.8 -fPIE -pie test.c -o test32_PIE -m32

gcc-4.8 test.c -o test_noPIE -no-pie
gcc-4.8 test.c -o test32_noPIE -no-pie -m32

