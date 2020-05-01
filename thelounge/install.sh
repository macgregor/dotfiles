if test ! $(which thelounge)
then
  echo 'Installing thelounge irc server.'
  yarn global add thelounge
fi

if test "$(uname)" = "Darwin"
then
  echo 'Creating startup LaunchAgent for thelounge.'

  src=$DOTFILES/thelounge/com.thelounge.startup.plist
  dst=/Library/LaunchAgents/com.thelounge.startup.plist
  currentSrc="$(readlink $dst)"

  if [ "$currentSrc" == "$src" ]
  then
    echo '$dst already properly linked.'
  else
    sudo mv "$dst" "${dst}.backup"
    sudo ln -s "$src" "$dst"
    echo "$src linked to $dst"
  fi
fi
