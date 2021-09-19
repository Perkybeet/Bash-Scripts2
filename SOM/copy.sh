#!bin/bash
ls
if [ $? -eq 0 ]
then
mkdir $1
sudo cp $2 $3 $1
else 
[ "^C" ]
fi
