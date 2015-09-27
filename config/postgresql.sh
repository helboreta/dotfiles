#!/usr/bin/env bash
set -eu

ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

exit 0