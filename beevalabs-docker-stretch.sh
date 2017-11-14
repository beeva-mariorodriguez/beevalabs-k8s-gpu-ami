#!/bin/bash
cd /tmp

export DEBIAN_FRONTEND=noninteractive
export APT_LISTCHANGES_FRONTEND=noninteractive

echo "deb http://cdn-aws.deb.debian.org/debian stretch main non-free contrib" > /etc/apt/sources.list
echo "deb http://security.debian.org stretch/updates main non-free contrib" >> /etc/apt/sources.list
echo "deb http://cdn-aws.deb.debian.org/debian stretch-updates main non-free contrib" >> /etc/apt/sources.list

echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" >> /etc/apt/sources.list.d/docker.list

wget https://download.docker.com/linux/debian/gpg
apt-key add gpg
apt-get update
# install curl
echo 'installing curl'
apt-get install -y curl
# install docker
echo 'installing docker'
apt-get install -y docker-ce
adduser admin docker