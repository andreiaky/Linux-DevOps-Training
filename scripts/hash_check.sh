#!/bin/bash
echo "Welcome to Hash Checker $USER"
sleep 1
echo "Starting the transfer validation..."
filename=important.txt
filepath1=~/Desktop/important.txt
filepath2=~/important.txt
path1=~/Desktop/
path2=~/
sleep 1

echo "(LOCAL $HOSTNAME) Checking if $filename in $path1 is ready..."
if [[ `find $filepath1 -type f -printf "%f\n"` = $filename ]]
then
	sleep 3
	echo "[OK] File there!"
else
	echo "Not found locally! Exiting..."
	exit 1
fi


echo "(SERVER $HOSTNAME) Checking if $filename in $path2 is ready..."
if [[ `find $filepath2 -type f -printf "%f\n"` = $filename ]]
then
    	sleep 3
        echo "[OK] File there!"
else    
        echo "Not found! Can't compare! Exiting..."
        exit 1
fi
echo
echo "====================="
echo "    CHECKSUM PART    "
echo "====================="
echo
echo "Executing checksums on file $filename in $path1..."
checksum1file1=$(md5sum $filepath1)
checksum2file1=$(sha256sum $filepath1)
echo "MD5:$checksum1file1"
echo "SHA256:$checksum2file1"

echo "Executing checksums on file $filename in $path2..."
checksum1file2=$(md5sum $filepath2)
checksum2file2=$(sha256sum $filepath2)
echo "MD5:$checksum1file2"
echo "SHA256:$checksum2file2"

echo
if [[ `echo $checksum1file1 | awk {'print $1'}` = `echo $checksum1file2 | awk {'print $1'}` && `echo $checksum2file1 | awk {'print $1'}` = `echo $checksum2file2 | awk {'print $1'}` ]]
then
	echo "OK"
else
	echo "Not OK"
fi

echo "I'm out..."
