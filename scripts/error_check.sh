#!/bin/bash

# Begin message
echo "Input log file to read (insert full path name): "
read USERINPUT

# We store in logfile the name of the file with basename command
LOGFILE=$(basename $USERINPUT)
# echo $LOGFILE
# echo

# If it finds an error in the file it outputs the first echo else no errors
if [[ `cat $USERINPUT | grep -Eioe error | head -n 1` = "error" ]]
then
	echo "Errors found in log $LOGFILE"
else
	echo "No errors found"
fi
