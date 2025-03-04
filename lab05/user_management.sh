#!/bin/bash

# Step 1: Create a new user (user1)
sudo adduser user1

# Step 2: Verify user creation by checking /etc/passwd
echo "Verifying user creation by displaying /etc/passwd:"
cat /etc/passwd | grep user1

# Step 3: Switch to user1 and verify login by running whoami
echo "Switching to user1 and verifying login:"
su - user1 -c "whoami"

# Step 4: Change user1's personal information
echo "Changing user1's personal information:"
su - user1 -c "chfn"

# Step 5: Verify the change in personal information
echo "Verifying personal information change by checking /etc/passwd again:"
cat /etc/passwd | grep user1

# Step 6: Delete user1 and remove the home directory
echo "Deleting user1 and removing home directory:"
pkill -KILL -u user1
sudo deluser --remove-home --force user1

# Step 7: Verify that user1 was deleted
echo "Verifying user deletion by checking /etc/passwd again:"
cat /etc/passwd | grep user1

# Step 8: Create a new group (group1)
echo "Creating a new group named group1:"
sudo groupadd group1

# Step 9: Create user2 and add them to group1
echo "Creating user2 and adding to group1:"
sudo adduser user2 --ingroup group1

# Step 10: Verify user2 is added to the group
echo "Verifying that user2 is added to group1:"
id user2
