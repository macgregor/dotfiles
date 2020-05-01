# install pyenv for managing python versions
if test ! $(which pyenv)
then
  echo 'pyenv not installed, brew should have already installed it.'
  exit 1
fi

CFLAGS="-O2 -I$(brew --prefix openssl)/include -I$(brew --prefix readline)/include -I$(brew --prefix zlib)/include $(brew --prefix sqlite)/include"
LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix readline)/lib"

pyenv versions | grep 3.6 &>/dev/null
if [ $? -eq 1 ]
then
  pyenv install 2.7.16
fi

pyenv versions | grep 3.6 &>/dev/null
if [ $? -eq 1 ]
then
  pyenv install 3.6.8
fi

unset CFLAGS
unset CPPFLAGS
