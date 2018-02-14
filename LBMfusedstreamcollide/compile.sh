#!/bin/bash

rm -f LBM.o seconds.o main.o sim *.bin

CXXFLAGS="-std=c++98 -pedantic -O3 -Wall"

g++ ${CXXFLAGS} -c LBM.cpp -o LBM.o
g++ ${CXXFLAGS} -c seconds.cpp -o seconds.o
g++ ${CXXFLAGS} -c main.cpp -o main.o
 
g++ LBM.o seconds.o main.o -o sim -lrt
