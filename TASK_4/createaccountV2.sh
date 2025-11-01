#!/bin/bash


# Inspected by Ben Cartwright
# Date 1/11/2025
# 5 total errors
# Error catagories and fixes
# 1. "User@dd /bin/bash $user" is an invalid bash command | Fix: added sudo useradd -m to create a user in the home directory 
# 2. "passwd $pwrd" is invalid | Fix: added echo "$user:pwrd"
# 3. useradd and chpasswd require admin privilages | Fix: added sudo prefixes to the commands
# 4. Group assignment missing | Fix: added sudo usermod -aG for both students and teachers
# 5. no input validation | Fix: added an if statment to ensure there is no empty fields

read -p "Enter Username: " user
read -p "Enter Password: " pwrd
read -p "Add to students or teachers group? " grp
# Validate input
if [[ -z "$user" || -z "$pwrd" ]]; then
    echo "Error: Username or Password cannot be empty."
    exit 1
fi

sudo useradd -m "$user"

echo "$user:$pwrd" | sudo chpasswd

# Assign user to the chosen group using if statement
if [[ "$grp" == "students" ]]; then
    sudo groupadd -f students   # create group if it doesn't exist
    sudo usermod -aG students "$user"

elif [[ "$grp" == "teachers" ]]; then
    sudo groupadd -f teachers   # create group if it doesn't exist
    sudo usermod -aG teachers "$user"

else
    echo "Error: Invalid group. Must be 'students' or 'teachers'."
    exit 1
fi

echo "User '$user' has been created and assigned to groups."
