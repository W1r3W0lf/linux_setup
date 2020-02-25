#! /bin/bash

version="1.13.7"
wget https://dl.google.com/go/go$version.linux-amd64.tar.gz
tar -C /usr/local -xzf ./go$version.linux-amd64.tar.gz
rm ./go$version.linux-amd64.tar.gz
