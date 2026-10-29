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

alias syncthing-status='systemctl --user status syncthing.service'
alias syncthing-logs='journalctl -e --user-unit=syncthing.service'
alias syncthing-stop='systemctl --user stop syncthing.service'
alias syncthing-start='systemctl --user start syncthing.service'
alias syncthing-restart='systemctl --user restart syncthing.service'
alias resolved-reload='sudo systemctl daemon-reload && sudo systemctl restart systemd-networkd && sudo systemctl restart systemd-resolved'
alias grep-code="grep -I --exclude-dir={.git,node_modules,build,coverage,tmp,temp,mod}"
alias jq-log-slurp='jq -R "fromjson? | . "'
alias jq-log-slurp-compact='jq -R "fromjson? | . " -c'


alias acli-login='printf "%s" "$JIRA_API_TOKEN" | acli jira auth login --site redhat.atlassian.net --email "$JIRA_USERNAME" --token'
alias gws-login="gws auth login -s drive,docs"
