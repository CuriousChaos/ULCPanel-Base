#!/bin/sh
./loaddata.sh
dayte=$(date +'%m/%d/%Y')
sleep 4s
echo "Do the update and install? [Y/N, Case Sensitive]"
read menti
if [ $menti = "Y" ]
then
./update.sh
fi
sleep 2s
clear
echo ULCPanel Loaded. Type 'help' for a list of commands.
echo Today is $dayte
while true
do
echo 
echo Ready for input.
read input
./scripts/$input
done