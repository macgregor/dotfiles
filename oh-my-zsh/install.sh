# install oh-my-zsh extension for zsh
stat ~/.oh-my-zsh &> /dev/null
if [ $? -ne 0 ]
then
  echo 'Installing Oh My ZSH.'
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
  echo 'Updating Oh My ZSH.'
  git -C ~/.oh-my-zsh pull
fi

chsh -s /bin/zsh

stat ~/.oh-my-zsh/custom/themes/powerlevel9k &> /dev/null
if [ $? -ne 0 ]
then
  echo 'Installing powerlevel9k theme.'
  git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
else
  echo 'Updating powerlevel9k theme.'
  git -C ~/.oh-my-zsh/custom/themes/powerlevel9k pull
fi

stat ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions &> /dev/null
if [ $? -ne 0 ]
then
  echo 'Installing zsh-autosuggestions plugin.'
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
else
  echo 'Updating zsh-autosuggestions plugin.'
  git -C ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions pull
fi


stat ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting &> /dev/null
if [ $? -ne 0 ]
then
  echo 'Installing zsh-syntax-highlighting plugin.'
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
else
  echo 'Updating zsh-syntax-highlighting plugin.'
  git -C ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting pull
fi
