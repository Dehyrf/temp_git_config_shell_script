#!/bin/bash

read -e -p "Enter the username: " -i "User" USERNAME
echo $USERNAME

read -e -p "Enter the email: " -i "$USERNAME@users.noreply.github.com" EMAIL
echo $EMAIL


touch ~/.bashrc
echo "alias gitchange='git config user.name "$USERNAME"
git config user.email "$EMAIL"'" >> ~/.bashrc

echo Please log out and log back in, then use 'gitchange' within a repo to change the user to the one you set
echo
