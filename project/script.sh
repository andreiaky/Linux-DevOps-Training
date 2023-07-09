#!/bin/bash

# Create 3 files in Financials
touch Financials/money.txt Financials/name.txt Financials/car.txt

# Move only the first column values into money.txt
cat NAS_IN/banking_data.txt | awk {'print $1'} > Financials/money.txt

# Move only second and third column values into name.txt
cat NAS_IN/banking_data.txt | awk {'print $2" "$3'} > Financials/name.txt

# Move only third column values into car.txt
cat NAS_IN/banking_data.txt | awk {'print $4'} > Financials/car.txt

# Create a backup folder inside Financials folder and copy the files there with the name : m.txt, n.txt, c.txt
mkdir Financials/backup ; cd Financials/
cp money.txt backup/m.txt ; cp name.txt backup/n.txt ; cp car.txt backup/c.txt
cd ..

# Print each file from backup folder to the terminal in the end
cat Financials/backup/m.txt
cat Financials/backup/n.txt
cat Financials/backup/c.txt
