#!/bin/bash

if [ "$#" -ne 1 ]; then
  printf "Usage: bash compile.sh filename \n    or bash compile.sh folder/filename\n"
  exit 1
fi

# Uncomment whichever compiler you're using and comment out the rest
g++ -o "$1.exe" "$1.cpp" && ./"$1.exe"
# gcc -o "$1.exe" "$1.c" && ./"$1.exe"
# mcs -out:"$1.exe" "$1.cs" && mono "$1.exe"
# rustc "$1.rs" -o ./"$1.exe" && ./"$1.exe"