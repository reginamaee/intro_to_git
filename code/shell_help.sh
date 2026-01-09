##################################
#Exercise 1: Create a SSH key 
#on GitHub and local system
##################################

##################################
# MAC ON TERMINAL

# create a new keygen
ssh-keygen -t ed25519 -C "INSERT GITHUB EMAIL HERE"
# copies key to clipboard
pbcopy < ~/.ssh/id_ed25519.pub

##################################
# WINDOWS ON COMMAND PROMPT

# create a new keygen
type %USERPROFILE%\.ssh\id_ed25519.pub
# copies key to clipboard
type %USERPROFILE%\.ssh\id_ed25519.pub | clip


##################################
#Exercise 2: Create repo locally and add
# github link as remote origin
##################################

##################################
# MAC ON TERMINAL 
# WINDOWS ON POWERSHELL

git remote add origin *GITHUB LINK HERE*
# this adds the line GITHUB_TEST onto the README.md folder
echo "# github_test_2" >> README.md
# this initializes a GIT FOLDER
git init
# this ADDS the README.md into the staging area
git add README.md
# commits changes and adds description of commit
git commit -m "first commit"
# sets branch to main
git branch -M main
# push commit/change to main
git push -u origin main


##################################
#Exercise 3: Create new branch & change branch locally
##################################

##################################
# MAC ON TERMINAL 
# WINDOWS ON POWERSHELL

# may changes that happens remote will be pulled to your local 
# directory
git pull

# change your local directory branch to edit_readme
git checkout edit_readme