function minikube-init {
  # add this entry to ~/.bashrc or ~/.zshrc to work in all terminal sessions
  eval $(minikube docker-env)

  # add minikube ip to /etc/hosts if want
  # TODO: this is adding unnecessary entries to hosts file
  echo "`minikube ip` docker.local" | sudo tee -a /etc/hosts > /dev/null
}
