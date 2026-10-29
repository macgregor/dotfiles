# install oh-my-zsh extension for zsh
stat ~/.oh-my-zsh &> /dev/null
if [ $? -ne 0 ]
then
  echo 'Installing Oh My ZSH.'
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
  echo 'Updating Oh My ZSH.'
  git -C ~/.oh-my-zsh pull --rebase
fi

# doesnt work for rhel CSB for some reason (ldap integration?)
#chsh -s /usr/bin/zsh

stat ~/.oh-my-zsh/custom/themes/powerlevel10k &> /dev/null
if [ $? -ne 0 ]
then
  echo 'Installing powerlevel10k theme.'
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
  echo 'You should also install/configure terminal font per:'
  echo '  https://github.com/romkatv/powerlevel10k/blob/master/README.md#meslo-nerd-font-patched-for-powerlevel10k'
else
  echo 'Updating powerlevel10k theme.'
  git -C ~/.oh-my-zsh/custom/themes/powerlevel10k pull --rebase
fi

stat ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions &> /dev/null
if [ $? -ne 0 ]
then
  echo 'Installing zsh-autosuggestions plugin.'
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
else
  echo 'Updating zsh-autosuggestions plugin.'
  git -C ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions pull --rebase
fi


stat ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting &> /dev/null
if [ $? -ne 0 ]
then
  echo 'Installing zsh-syntax-highlighting plugin.'
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
else
  echo 'Updating zsh-syntax-highlighting plugin.'
  git -C ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting pull --rebase
fi
