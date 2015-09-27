#!/usr/bin/env bash
set -eu

echo "Configuring git..."
git config --global user.name 'Helder Kato'
git config --global user.email 'zell.helder@gmail.com'
git config --global color.ui true
ssh-keygen -t rsa -b 4096 -C "zell.helder@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
echo "Paste on github"
read -p "Press [Enter] key to continue..."
# ssh -T git@github.com

exit 0