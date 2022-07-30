# install jenv for managing jdk versions
if test ! $(which jenv)
then
  echo 'jenv not installed, brew should have already installed it.'
  exit 0
fi

jenv enable-plugin export
jenv enable-plugin maven
jenv rehash
jenv doctor
