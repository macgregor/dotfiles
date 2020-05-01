# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias gls="gls -F --color"
  alias gl="gls -lAh --color"
  alias gll="gls -l --color"
  alias gla='gls -A --color'
fi

which bat &>/dev/null
if [ $? -eq 0 ]
then
  alias cat='bat'
fi

which exa &>/dev/null
if [ $? -eq 0 ]
then
  alias ls='exa --long --header --git'
fi

#if $(which fd)
#then
#  alias find='fd'
#fi
