#!/bin/bash
read -p 'Git User Name:' userName
read -p 'Git User Email:'  userEmail
git config --global user.name "$userName"
echo "Set User Name"
git config --global user.email "$userEmail"
echo "Set User Email"
read -p 'create ssh Key?[y/n]:' sshKeyIf

if [ $sshKeyIf = "y" ]; then
	echo "creating ssh Key..."
	ssh-keygen -t ed25519 -C "$userEmail"
	cat /home/$USER/.ssh/id_ed25519.pub
fi
