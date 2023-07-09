# Final Project

#### 1. Manually create the folders with the following permissions:

- User has Read, Write, Execute
- Group has Read & Execute
- Others have nothing

Solution:
```bash
cd ~/Desktop/
mkdir Financials NAS_IN ; chmod 750 Financials NAS_IN
```

#### 2. Manually create a file in NAS_IN named banking_data.txt with full rights for everyone (Value$ Name1 Name2 Car).

Solution:
```bash
touch NAS_IN/banking_data.txt
vim NAS_IN/banking_data.txt
```

From there you add the required text:
```
23$ Din Djarin Razor_Crest
58$ John Wick Ford_Mustang
913$ Harrison Ford Millennium_Falcon
80$ Bilbo Baggins Pony
185$ Aemond Targaryen Dragon
791$ Tony Stark Mark_III
485$ Ragnar Lothbrok Boat
```

Then ESC -> :wq to write and quit

#### 3. Create a bash script that will automatically create 3 files in Financials folder (money.txt, name.txt, car.txt), then the script should be able to output them into the files as it follows:

- Move only the first column values into money.txt
- Move only second and third column values into name.txt 
- Move only third column values into car.txt 
- Create a backup folder inside Financials folder and copy the files there with the name : m.txt, n.txt, c.txt
- Print each file from backup folder to the terminal in the end

Solution can be found in this folder of the repo on a script called `script.sh`.When tested, this file and the other ones should be moved on Desktop.
