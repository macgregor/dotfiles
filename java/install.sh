# install jenv for managing jdk versions
if test ! $(which jenv)
then
  echo 'jenv not installed, brew should have already installed it.'
  exit 1
fi

jenv rehash
jenv doctor
