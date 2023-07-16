#!/bin/bash

# Begin message
echo "Input log file to read (insert full path name): "
read USERINPUT

# -- FIX INVALID PATH --
# We store and compare the input from user with the findings as so
ECHOPATH=$(echo $USERINPUT)			# Will store the user input no matter if correct or not
echo $ECHOPATH
FINDPATH=$(2>/dev/null find $USERINPUT)		# Will store the path and in case of error we send it in null
echo $FINDPATH
LOGFILE=$(basename $USERINPUT)			# File name
echo "Trying to find file $LOGFILE"
ok=0
while [[ $ok = 0 ]]
do
	if [[ $ECHOPATH = $FINDPATH ]]
	then
		echo "File found --> $USERINPUT <--"
		ok=1
		if [[ `2>/dev/null cat $ECHOPATH | grep -Eioe error | head -n 1` = "error" ]]
		then
        		echo "Errors found in log $LOGFILE"
		else
        		echo "No errors found"
		fi
	else
		echo "File not found! Try again."
		read USERINPUT
		ECHOPATH=$(echo $USERINPUT)
		FINDPATH=$(2>/dev/null find $USERINPUT)
	fi
done
