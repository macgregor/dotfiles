if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "> sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# try to install xcode headlessly
xcode-select -p &> /dev/null
if [ $? -ne 0 ]
then
  echo "Xcode CLI tools not found. Installing them..."
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
  echo "> softwareupdate -i \"${PROD}\""
  softwareupdate -i "$PROD"
  if [ $? -ne 0 ]; then
    xcode-select -p &> /dev/null
    if [ $? -ne 0 ]
    then
      echo 'xcode command line tools not installed correctly. Try `xcode-select --install`.'
    fi
  fi
fi

# install macos sdk headers, required for things like python (https://github.com/pyenv/pyenv/wiki/Common-build-problems#prerequisites)
stat /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg &> /dev/null
if [ $? -ne 0 ]
then
  echo 'macOS SDK headers not found. Make sure xcode command line tools are installed and/or download the headers. See https://developer.apple.com/documentation/xcode_release_notes/xcode_10_release_notes#3035624 for more information.'
else
  echo '> sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /'
  sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
fi
