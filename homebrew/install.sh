#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

fi

BREWFILE="${DOTFILES}/homebrew/Brewfile"
if test "$(uname)" = "Darwin"
then
  BREWFILE="${DOTFILES}/homebrew/Brewfile.mac"
elif test ! $(grep -q "release 8" /etc/redhat-release)
then
  BREWFILE="${DOTFILES}/homebrew/Brewfile.rhel8"
fi

brew tap Homebrew/bundle
brew bundle --file=$BREWFILE --cleanup --no-lock

exit 0
