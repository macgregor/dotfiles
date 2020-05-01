typeset -U oh_my_config_files
oh_my_config_files=($DOTFILES/**/*.oh-my)

# load the path files
for file in ${(M)oh_my_config_files}
do
  source $file
done

unset oh_my_config_files

source $ZSH/oh-my-zsh.sh
