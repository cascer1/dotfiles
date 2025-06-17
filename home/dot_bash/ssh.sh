#!/bin/bash

cd ~/.ssh
cp authorized_keys temp.txt
curl -s https://github.com/cascer1.keys >> temp.txt
awk '!seen[$0] ++' temp.txt > authorized_keys
rm temp.txt
