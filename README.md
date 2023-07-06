# IBM-Linux-Homework-1
This is my repo where I keep the things I made for the first homework.

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
