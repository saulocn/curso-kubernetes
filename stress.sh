#!/bin/bash

for i in {1..10000}; do

  curl http://192.168.99.100:32232 > teste.txt
  sleep $1

done