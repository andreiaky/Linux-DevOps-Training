# IBM Linux Homework 1

1. Use the grep command to search for a specific keyword in a file or set of files and output the results to a new file.

Solution:
We create a file named file.txt with that contains the following string, a pangram — sentence that contains all the letters of the alphabet.

```bash
touch file.txt
echo "The quick brown fox jumps over the lazy dog" > file.txt
cat file.txt | grep -io "fox" > match_new_file1.txt 2> output.log
```

Another example where we can output our MAC address:

```bash
ip address | grep link/ether | awk '{print $2;}' > match_new_file2.txt 2> output.log
```
We use stderr to print in case of an error in an output file from the three file descriptors (stdin, stdout, stderr)

2. Use the sed command to find and replace a specific string in a file.

Solution:
```bash
cp file.txt file_with_sed.txt
cat file_with_sed.txt
sed -i "s/fox/cat/g" file_with_sed.txt
```

3. Use the tar command to create a compressed archive of a directory.

Solution:
Let's backup files some of our files output to the previous commands.
```bash
mkdir BackupFiles
cp file.txt file_with_sed.txt BackupFiles/
tar -zcvf backup.tar.gz BackupFiles/
```

4. Use the awk command to extract the „rights” column of a document/file/folder and output it in the terminal.

Solution:
```bash
ls -l file.txt | awk {'print $1'}
```

5. Use the chmod command to change the permissions of a file as it follows : user has read write execute, group has read and execute, others have nothing at all.

Solution:
```bash
touch another_file
chmod 750 another_file
```

6. Use the wc command to count the number of lines, words, and characters in a file or set of files.

Solution:
We know about the file match_new_file1.txt that contains the word "fox". This file should contain 1 line, 1 word and 3 characters plus the line feed 4 in total. Where l means lines, m characters and w words.

```bash
wc -lmw match_new_file1.txt
```

### The last problem

7. Create a bash script that takes as input a log file and executes a search in it, using grep for the keyword “error”. As soon as the “error” word is detected through the log file, the script should return a message saying “Errors found in log <name_of_log>”.

Note: Do not forget to include the fullpath to the file before it’s name, when called as a parameter to the script run. Also, the log file must be populated by you.

Solution in scripts folder. We created an example based on the kern.log file in /var/log folder where I found a line with a segmentation fault error.

```bash
user@pc:~/Desktop/Homework1/scripts$ bash error_check.sh 
Input log file to read (insert full path name): 
/home/user/Desktop/Homework1/scripts/kern.log
Errors found in log kern.log
```
