#!/usr/bin/env bash
set -eu

echo "Installing ruby..."
rbenv install 2.2.1
rbenv global 2.2.1

echo "Installing rails..."
sudo gem install rails -v 4.2.4
rbenv rehash

exit 0