#!/bin/bash

gcc-5 test.c -o test

gcc-5 test.c -o test32 -m32

gcc-5 -fno-stack-protector test.c -o test_nocanary
gcc-5 -fno-stack-protector test.c -o test32_nocanary -m32

gcc-5 -z execstack test.c -o test_nonx
gcc-5 -z execstack test.c -o test32_nonx -m32

gcc-5 -Wl,-z,relro test.c -o test_prelro
gcc-5 -Wl,-z,relro test.c -o test32_prelro -m32


gcc-5 -Wl,-z,relro,-z,now test.c -o test_fulrelro
gcc-5 -Wl,-z,relro,-z,now test.c -o test32_fulrelro -m32


gcc-5 -z norelro test.c -o test_norelro 
gcc-5 -z norelro test.c -o test32_norelro -m32


gcc-5 -fPIE -pie test.c -o test_PIE 
gcc-5 -fPIE -pie test.c -o test32_PIE -m32

gcc-5 test.c -o test_noPIE -no-pie
gcc-5 test.c -o test32_noPIE -no-pie -m32

