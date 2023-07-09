# IBM Linux Homework 2

### 1. Transfer Validation

- Bash script to test if the hashsum of two files match
- This simulates a situation of a file transfer between systems
- Targets to compare: /home/user/Desktop/file.txt and /home/user/file.txt

**TO-DO AND WARNINGS:** Use at least 2 hashing algorithms. We will use **md5sum** and **sha256sum** for our solution.

Solution in _scripts_ folder. There is a file called `hash_check.sh` to run.

We will create a file called `important.txt` and then copy it like /home/user/Desktop -> /home/user

To make sure that we have **correspondence** between both files, we can copy the results of the two hashes in a text editor then use the find option that the app provides to see the match.

```bash
cd ~/Desktop/
echo "Very important take care!" >> important.txt ; sha256sum important.txt
cp important.txt .. ; sha256sum ~/important.txt
```
