#!/usr/bin/env bash
set -eu

#
# Application installer (via brew-cask)
#

# Apps
apps=(
  1password
  android-file-transfer
  android-studio
  atom
  mkchromecast
  dropbox
  evernote
  google-chrome
  google-drive
  java
  microsoft-office
  moom
  selfcontrol
  skype
  slack
  spotify
  sublime-text
  vagrant
  vlc
)

# fonts
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
)

# Atom packages
atom=(
  advanced-railscasts-syntax
  atom-beautify
  cmd-9
  color-picker
  css-comb
  docblockr
  # easy-motion
  editor-stats
  emmet
  # fancy-new-file
  file-icons
  git-history
  highlight-selected
  # image-view
  # inc-dec-value
  key-peek
  language-jade
  linter
  # markdown-preview
  merge-conflicts
  neutron-ui
  npm-install
  react
  vim-mode
  zentabs
)

# Specify the location of the apps
appdir="/Applications"

main() {

  # Install homebrew-cask
  echo "installing cask..."
  brew tap caskroom/cask

  # Tap alternative versions
  brew tap caskroom/versions

  # Tap the fonts
  brew tap caskroom/fonts

  # install apps
  echo "installing apps..."
  brew cask install --appdir=$appdir ${apps[@]}

  # install fonts
  echo "installing fonts..."
  brew cask install ${fonts[@]}

  # install atom plugins
  echo "installing atom plugins..."
  apm install ${atom[@]}

  # ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

  brew cleanup
}

main "$@"
exit 0
