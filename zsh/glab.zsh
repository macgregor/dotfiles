# glab selects a per-host token from the OS keyring. Global token variables
# override that selection, so clear them to use the token for the current host.
glab() {
  command env -u GITLAB_TOKEN -u OAUTH_TOKEN glab "$@"
}
