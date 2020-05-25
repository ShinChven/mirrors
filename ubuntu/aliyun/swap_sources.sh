#!/bin/bash

cp /etc/apt/sources.list /etc/apt/sources.list.bak

UBUNTU_VERSION="$1"

URL="https://raw.githubusercontent.com/ShinChven/mirrors/master/ubuntu/aliyun/$UBUNTU_VERSION.sources.list"

echo $URL

wget $URL -O /etc/apt/sources.list

apt-get update