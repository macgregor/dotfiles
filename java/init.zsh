#eval "$(jenv init -)"

# jenv its extremely slow, lazy load it instead
# https://github.com/jenv/jenv/issues/148
# https://github.com/jenv/jenv/issues/178
jenv() {
  eval "$(jenv init -)"
  jenv "$@"
}
