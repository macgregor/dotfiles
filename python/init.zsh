eval "$(pyenv init - --no-rehash)"
(pyenv rehash &) 2> /dev/null
eval "$(pyenv virtualenv-init - --no-rehash)"
(pyenv virtualenv-init rehash &) 2> /dev/null
