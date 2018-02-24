#!/bin/sh
sudo apt --fix-broken install
sudo apt-get install python
sudo apt-get install g++
# update/install everything for Mono
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian stable-raspbianstretch main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt-get install mono-complete

sudo ./scripts/asac upall
# insert other update/install code here

sudo apt-get update