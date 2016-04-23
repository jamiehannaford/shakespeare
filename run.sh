#!/bin/bash

file=$1

make -C "examples" $file > /dev/null 2>&1
./examples/$file
rm ./examples/$file
