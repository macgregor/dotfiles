#compdef _ocm ocm

function _ocm {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "account:Get information about users."
      "cluster:Get information about clusters"
      "completion:Generate completion scripts for various shells"
      "config:get or set configuration variables"
      "create:Create a resource from stdin"
      "delete:Send a DELETE request"
      "describe:Show details of a specific resource"
      "edit:Edit a resource from stdin"
      "fail:Failure resource"
      "get:Send a GET request"
      "help:Help about any command"
      "hibernate:Hibernate a specific resource (currently only supported for clusters)"
      "list:List all resources of a specific type"
      "login:Log in"
      "logout:Log out"
      "patch:Send a PATCH request"
      "plugin:Get information about plugins"
      "pop:Fetch resource"
      "post:Send a POST request"
      "push:Push resource"
      "resume:Resumes a hibernating resource (currently only supported for clusters)"
      "success:Success resource"
      "token:Generates a token"
      "version:Prints the version"
      "whoami:Prints user information"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  account)
    _ocm_account
    ;;
  cluster)
    _ocm_cluster
    ;;
  completion)
    _ocm_completion
    ;;
  config)
    _ocm_config
    ;;
  create)
    _ocm_create
    ;;
  delete)
    _ocm_delete
    ;;
  describe)
    _ocm_describe
    ;;
  edit)
    _ocm_edit
    ;;
  fail)
    _ocm_fail
    ;;
  get)
    _ocm_get
    ;;
  help)
    _ocm_help
    ;;
  hibernate)
    _ocm_hibernate
    ;;
  list)
    _ocm_list
    ;;
  login)
    _ocm_login
    ;;
  logout)
    _ocm_logout
    ;;
  patch)
    _ocm_patch
    ;;
  plugin)
    _ocm_plugin
    ;;
  pop)
    _ocm_pop
    ;;
  post)
    _ocm_post
    ;;
  push)
    _ocm_push
    ;;
  resume)
    _ocm_resume
    ;;
  success)
    _ocm_success
    ;;
  token)
    _ocm_token
    ;;
  version)
    _ocm_version
    ;;
  whoami)
    _ocm_whoami
    ;;
  esac
}


function _ocm_account {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "orgs:List organizations."
      "quota:Retrieve cluster quota information."
      "roles:Retrieve information of the different roles"
      "status:Status of current user."
      "users:Retrieve users and their roles"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  orgs)
    _ocm_account_orgs
    ;;
  quota)
    _ocm_account_quota
    ;;
  roles)
    _ocm_account_roles
    ;;
  status)
    _ocm_account_status
    ;;
  users)
    _ocm_account_users
    ;;
  esac
}

function _ocm_account_orgs {
  _arguments \
    '--columns[Comma separated list of columns to display.]:' \
    '*--header[Headers to add to the request. The value must be the name of the header followed by an optional equals sign and then the value of the header. Can be used multiple times to specify multiple headers or multiple values for the same header.]:' \
    '(*-p *--parameter)'{\*-p,\*--parameter}'[Query parameters to add to the request. The value must be the name of the parameter, followed by an optional equals sign and then the value of the parameter. Can be used multiple times to specify multiple parameters or multiple values for the same parameter. Example: --parameter search="username like '\''myname%'\''"]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_account_quota {
  _arguments \
    '--json[Returns a list of resource quota objects in JSON.]' \
    '--org[Specify which organization to query information from. Default to local users organization.]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_account_roles {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_account_status {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_account_users {
  _arguments \
    '--org[Organization identifier. Defaults to the organization of the current user.]:' \
    '*--roles[Role identifiers. Returns users with one or more of the specified roles.
		Multiple roles can be specified like: --roles="role1,role2,role2".]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_cluster {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "login:login to a cluster"
      "status:Status of a cluster"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  login)
    _ocm_cluster_login
    ;;
  status)
    _ocm_cluster_status
    ;;
  esac
}

function _ocm_cluster_login {
  _arguments \
    '--console[Open the OpenShift console for the cluster in the default browser]' \
    '(-t --token)'{-t,--token}'[Display the cluster API login token using the default browser]' \
    '(-u --username)'{-u,--username}'[Username, will prompt if not provided]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_cluster_status {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_completion {
  _arguments \
    '(-h --help)'{-h,--help}'[help for completion]' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    '1: :("bash" "zsh" "fish" "powershell")'
}


function _ocm_config {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "get:Prints the value of a config variable"
      "set:Sets the variable's value"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  get)
    _ocm_config_get
    ;;
  set)
    _ocm_config_set
    ;;
  esac
}

function _ocm_config_get {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_config_set {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_create {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "cluster:Create managed clusters"
      "idp:Add IDP for cluster"
      "ingress:Add Ingress to cluster"
      "machinepool:Add machine pool to cluster"
      "upgrade-policy:set an upgrade policy for the cluster"
      "user:Configure user access for cluster"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  cluster)
    _ocm_create_cluster
    ;;
  idp)
    _ocm_create_idp
    ;;
  ingress)
    _ocm_create_ingress
    ;;
  machinepool)
    _ocm_create_machinepool
    ;;
  upgrade-policy)
    _ocm_create_upgrade-policy
    ;;
  user)
    _ocm_create_user
    ;;
  esac
}

function _ocm_create_cluster {
  _arguments \
    '--aws-access-key-id[AWS access key ID.]:' \
    '--aws-account-id[AWS account ID.]:' \
    '--aws-secret-access-key[AWS secret access key.]:' \
    '--ccs[Leverage your own cloud account (Customer Cloud Subscription). See https://www.openshift.com/dedicated/ccs.]' \
    '--channel-group[The channel group to create the cluster at (for example, "stable")]:' \
    '--compute-machine-type[Instance type for the compute nodes. Determines the amount of memory and vCPU allocated to each compute node.]:' \
    '--compute-nodes[Number of worker nodes to provision. Single zone clusters need at least 4 nodes on Red Hat infra, 2 on CCS. Multi-AZ at least 9 nodes on Red Hat infra, 3 on CCS, and must be a multiple of 3. If omitted, uses minimum.]:' \
    '--dry-run[Simulate creating the cluster.]' \
    '--enable-autoscaling[Enable autoscaling of compute nodes.]' \
    '--etcd-encryption[Encrypt etcd.]' \
    '--flavour[The OCM flavour to create the cluster with]:' \
    '--host-prefix[Subnet prefix length to assign to each individual node. For example, if host prefix is set to "23", then each node is assigned a /23 subnet out of the given CIDR.]:' \
    '(-i --interactive)'{-i,--interactive}'[Enable interactive mode.]' \
    '--machine-cidr[Block of IP addresses used by OpenShift while installing the cluster, for example "10.0.0.0/16".]:' \
    '--max-replicas[Maximum number of compute nodes.]:' \
    '--min-replicas[Minimum number of compute nodes.]:' \
    '--multi-az[Deploy to multiple data centers.]' \
    '--pod-cidr[Block of IP addresses from which Pod IP addresses are allocated, for example "10.128.0.0/14".]:' \
    '--private[Restrict master API endpoint and application routes to direct, private connectivity.]' \
    '--provider[The cloud provider to create the cluster on]:' \
    '--region[The cloud provider region to create the cluster in. See `ocm list regions`.]:' \
    '--service-account-file[GCP service account JSON file path.]:' \
    '--service-cidr[Block of IP addresses for services, for example "172.30.0.0/16".]:' \
    '--version[The OpenShift version to create the cluster at (for example, "4.1.16")]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_create_idp {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to add the IdP to (required).]:' \
    '(-t --type)'{-t,--type}'[Type of identity provider. Options are [github google ldap openid htpasswd]
]:' \
    '(-n --name)'{-n,--name}'[Name of the identity provider.]:' \
    '--mapping-method[Specifies how new identities are mapped to users when they log in]:' \
    '--client-id[Client ID from the registered application.]:' \
    '--client-secret[Client Secret from the registered application.
]:' \
    '--hostname[GitHub: Optional domain to use with a hosted instance of GitHub Enterprise.]:' \
    '--organizations[GitHub: Only users that are members of at least one of the listed organizations will be allowed to log in.]:' \
    '--teams[GitHub: Only users that are members of at least one of the listed teams will be allowed to log in. The format is <org>/<team>.
]:' \
    '--hosted-domain[Google: Restrict users to a Google Apps domain.
]:' \
    '--url[LDAP: An RFC 2255 URL which specifies the LDAP search parameters to use.]:' \
    '--bind-dn[LDAP: DN to bind with during the search phase.]:' \
    '--bind-password[LDAP: Password to bind with during the search phase.]:' \
    '--id-attributes[LDAP: The list of attributes whose values should be used as the user ID.]:' \
    '--username-attributes[LDAP: The list of attributes whose values should be used as the preferred username.]:' \
    '--name-attributes[LDAP: The list of attributes whose values should be used as the display name.]:' \
    '--email-attributes[LDAP: The list of attributes whose values should be used as the email address.
]:' \
    '--issuer-url[OpenID: The URL that the OpenID Provider asserts as the Issuer Identifier. It must use the https scheme with no URL query parameters or fragment.]:' \
    '--email-claims[OpenID: List of claims to use as the email address.]:' \
    '--name-claims[OpenID: List of claims to use as the display name.]:' \
    '--username-claims[OpenID: List of claims to use as the preferred username when provisioning a user.
]:' \
    '--username[HTPasswd: Username.
]:' \
    '--password[HTPasswd: Password.
]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_create_ingress {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to add the ingress to (required).]:' \
    '--label-match[Label match for ingress. Format should be a comma-separated list of '\''key=value'\''. If no label is specified, all routes will be exposed on both routers.]:' \
    '--private[Restrict application route to direct, private connectivity.]' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_create_machinepool {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to add the machine pool to (required).]:' \
    '--enable-autoscaling[Enable autoscaling of compute nodes.]' \
    '--instance-type[Instance type that should be used.]:' \
    '--labels[Labels for machine pool. Format should be a comma-separated list of '\''key=value'\''. This list will overwrite any modifications made to Node labels on an ongoing basis.]:' \
    '--max-replicas[Maximum number of compute nodes.]:' \
    '--min-replicas[Minimum number of compute nodes.]:' \
    '--replicas[Count of machines for this machine pool.]:' \
    '--taints[Taints for machine pool. Format should be a comma-separated list of '\''key=value:scheduleType'\''. This list will overwrite any modifications made to Node taints on an ongoing basis.]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_create_upgrade-policy {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID of the cluster to add the machine pool to (required).]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_create_user {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to add the user to (required).]:' \
    '--group[Group name to add the users to (required).]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_delete {
  local -a commands

  _arguments -C \
    '*--header[Headers to add to the request. The value must be the name of the header followed by an optional equals sign and then the value of the header. Can be used multiple times to specify multiple headers or multiple values for the same header.]:' \
    '(*-p *--parameter)'{\*-p,\*--parameter}'[Query parameters to add to the request. The value must be the name of the parameter, followed by an optional equals sign and then the value of the parameter. Can be used multiple times to specify multiple parameters or multiple values for the same parameter. Example: --parameter search="username like '\''myname%'\''"]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "idp:Delete cluster IDPs"
      "ingress:Delete cluster ingress"
      "machinepool:Delete cluster machine pool"
      "upgradepolicy:Delete cluster upgrade policy"
      "user:Remove user access from cluster"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  idp)
    _ocm_delete_idp
    ;;
  ingress)
    _ocm_delete_ingress
    ;;
  machinepool)
    _ocm_delete_machinepool
    ;;
  upgradepolicy)
    _ocm_delete_upgradepolicy
    ;;
  user)
    _ocm_delete_user
    ;;
  esac
}

function _ocm_delete_idp {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to delete the IdP from (required).]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_delete_ingress {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to delete the ingress from (required).]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_delete_machinepool {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to delete the machine pool from (required).]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_delete_upgradepolicy {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to delete the upgrade policy from (required).]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_delete_user {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to delete the user from (required).]:' \
    '--group[Group name to delete the user from.]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_describe {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "cluster:Show details of a cluster"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  cluster)
    _ocm_describe_cluster
    ;;
  esac
}

function _ocm_describe_cluster {
  _arguments \
    '--json[Output the entire JSON structure]' \
    '--output[Output result into JSON file.]' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_edit {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "cluster:Edit cluster"
      "ingress:Edit a cluster Ingress"
      "machinepool:Edit a cluster machine pool"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  cluster)
    _ocm_edit_cluster
    ;;
  ingress)
    _ocm_edit_ingress
    ;;
  machinepool)
    _ocm_edit_machinepool
    ;;
  esac
}

function _ocm_edit_cluster {
  _arguments \
    '--channel-group[The channel group which the cluster version belongs to.]:' \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster.]:' \
    '--private[Restrict master API endpoint to direct, private connectivity.]' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_edit_ingress {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to add the ingress to (required).]:' \
    '--label-match[Label match for ingress. Format should be a comma-separated list of '\''key=value'\''. If no label is specified, all routes will be exposed on both routers.]:' \
    '--private[Restrict application route to direct, private connectivity.]' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_edit_machinepool {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to edit the machine pool (required).]:' \
    '--enable-autoscaling[Enable autoscaling of compute nodes.]' \
    '--labels[Labels for machine pool. Format should be a comma-separated list of '\''key=value'\''. This list will overwrite any modifications made to Node labels on an ongoing basis.]:' \
    '--max-replicas[Maximum number of compute nodes.]:' \
    '--min-replicas[Minimum number of compute nodes.]:' \
    '--replicas[Count of machines for this machine pool.]:' \
    '--taints[Taints for machine pool. Format should be a comma-separated list of '\''key=value:scheduleType'\''. This list will overwrite any modifications made to Node taints on an ongoing basis.]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_fail {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "job:Mark the Job as a failure"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  job)
    _ocm_fail_job
    ;;
  esac
}

function _ocm_fail_job {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_get {
  _arguments \
    '*--header[Headers to add to the request. The value must be the name of the header followed by an optional equals sign and then the value of the header. Can be used multiple times to specify multiple headers or multiple values for the same header.]:' \
    '(*-p *--parameter)'{\*-p,\*--parameter}'[Query parameters to add to the request. The value must be the name of the parameter, followed by an optional equals sign and then the value of the parameter. Can be used multiple times to specify multiple parameters or multiple values for the same parameter. Example: --parameter search="username like '\''myname%'\''"]:' \
    '--single[Return the output as a single line.]' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    '1: :("orgs" "skus" "accounts" "resource_quota" "roles" "sku_rules" "role_bindings" "addons" "versions" "accts" "subscriptions" "subs" "organizations" "clusters" "org" "sku_rule" "account" "sub" "idp" "acct" "organization" "role_binding" "user" "version" "ingress" "subscription" "role" "sku" "cluster" "addon")'
}

function _ocm_help {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_hibernate {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "cluster:Initiate cluster hibernation"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  cluster)
    _ocm_hibernate_cluster
    ;;
  esac
}

function _ocm_hibernate_cluster {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_list {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "addons:List add-on installations"
      "clusters:List clusters"
      "idps:List cluster IDPs"
      "ingresses:List cluster Ingresses"
      "machinepools:List cluster machine pools"
      "organization:List organizations."
      "quota:Retrieve cluster quota information."
      "region:List known/available cloud provider regions"
      "upgradepolicies:List cluster upgrade policies"
      "users:List cluster users"
      "versions:List available versions"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  addons)
    _ocm_list_addons
    ;;
  clusters)
    _ocm_list_clusters
    ;;
  idps)
    _ocm_list_idps
    ;;
  ingresses)
    _ocm_list_ingresses
    ;;
  machinepools)
    _ocm_list_machinepools
    ;;
  organization)
    _ocm_list_organization
    ;;
  quota)
    _ocm_list_quota
    ;;
  region)
    _ocm_list_region
    ;;
  upgradepolicies)
    _ocm_list_upgradepolicies
    ;;
  users)
    _ocm_list_users
    ;;
  versions)
    _ocm_list_versions
    ;;
  esac
}

function _ocm_list_addons {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to list the add-ons of (required).]:' \
    '--columns[Comma separated list of columns to display.]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_list_clusters {
  _arguments \
    '--columns[Specify which columns to display separated by commas, path is based on Cluster struct]:' \
    '*--header[Headers to add to the request. The value must be the name of the header followed by an optional equals sign and then the value of the header. Can be used multiple times to specify multiple headers or multiple values for the same header.]:' \
    '--managed[Filter managed/unmanaged clusters]' \
    '--no-headers[Don'\''t print header row]' \
    '--padding[Change all column sizes.]:' \
    '(*-p *--parameter)'{\*-p,\*--parameter}'[Query parameters to add to the request. The value must be the name of the parameter, followed by an optional equals sign and then the value of the parameter. Can be used multiple times to specify multiple parameters or multiple values for the same parameter. Example: --parameter search="username like '\''myname%'\''"]:' \
    '--step[This option is deprectaed and has no effect. To display output page by page use the '\''pager'\'' config variable to enable use a pager command. For example, to use the '\''less'\'' command run '\''ocm config set pager less'\''.]' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_list_idps {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to list the IdP of (required).]:' \
    '--columns[Comma separated list of columns to display.]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_list_ingresses {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to list the routes of (required).]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_list_machinepools {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to list the machine pools of (required).]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_list_organization {
  _arguments \
    '--columns[Comma separated list of columns to display.]:' \
    '*--header[Headers to add to the request. The value must be the name of the header followed by an optional equals sign and then the value of the header. Can be used multiple times to specify multiple headers or multiple values for the same header.]:' \
    '(*-p *--parameter)'{\*-p,\*--parameter}'[Query parameters to add to the request. The value must be the name of the parameter, followed by an optional equals sign and then the value of the parameter. Can be used multiple times to specify multiple parameters or multiple values for the same parameter. Example: --parameter search="username like '\''myname%'\''"]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_list_quota {
  _arguments \
    '--json[Returns a list of resource quota objects in JSON.]' \
    '--org[Specify which organization to query information from. Default to local users organization.]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_list_region {
  _arguments \
    '--aws-access-key-id[AWS access key]:' \
    '--aws-secret-access-key[AWS Secret Access]:' \
    '--ccs[Lists  the regions specific to your cloud account]' \
    '--provider[Lists the regions for the specific cloud provider]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_list_upgradepolicies {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to list the upgrade policies of (required).]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_list_users {
  _arguments \
    '(-c --cluster)'{-c,--cluster}'[Name or ID or external_id of the cluster to add the IdP to (required).]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_list_versions {
  _arguments \
    '--channel-group[List only versions from the specified channel group]:' \
    '(-d --default)'{-d,--default}'[Show only the default version]' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_login {
  _arguments \
    '--client-id[OpenID client identifier. The default value is '\''cloud-services'\''.]:' \
    '--client-secret[OpenID client secret.]:' \
    '--insecure[Enables insecure communication with the server. This disables verification of TLS certificates and host names.]' \
    '--password[User password.]:' \
    '--persistent[By default the tool doesn'\''t persistently store the user name and password, so when the refresh token expires the user will have to log in again. If this option is provided then the user name and password will be stored persistently, in clear text, which is potentially unsafe.]' \
    '*--scope[OpenID scope. If this option is used it will replace completely the default scopes. Can be repeated multiple times to specify multiple scopes.]:' \
    '--token[Access or refresh token.]:' \
    '--token-url[OpenID token URL. The default value is '\''https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/token'\''.]:' \
    '--url[URL of the API gateway. The value can be the complete URL or an alias. The valid aliases are '\''production'\'', '\''staging'\'', '\''integration'\'' and their shorthands.]:' \
    '--user[User name.]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_logout {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_patch {
  _arguments \
    '--body[Name fo the file containing the request body. If this isn'\''t given then the body will be taken from the standard input.]:' \
    '*--header[Headers to add to the request. The value must be the name of the header followed by an optional equals sign and then the value of the header. Can be used multiple times to specify multiple headers or multiple values for the same header.]:' \
    '(*-p *--parameter)'{\*-p,\*--parameter}'[Query parameters to add to the request. The value must be the name of the parameter, followed by an optional equals sign and then the value of the parameter. Can be used multiple times to specify multiple parameters or multiple values for the same parameter. Example: --parameter search="username like '\''myname%'\''"]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    '1: :("resource_quota" "roles" "sku_rules" "accounts" "addons" "versions" "role_bindings" "subscriptions" "subs" "organizations" "clusters" "accts" "skus" "orgs" "subscription" "role" "sku" "cluster" "addon" "version" "ingress" "org" "sku_rule" "account" "sub" "idp" "acct" "organization" "role_binding" "user")'
}


function _ocm_plugin {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "list:List ocm plugins"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  list)
    _ocm_plugin_list
    ;;
  esac
}

function _ocm_plugin_list {
  _arguments \
    '--columns[Comma separated list of columns to display.]:' \
    '--nameonly[Show the plugin name only. This option is deprecated, use '\''--columns name'\'' instead.]' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_pop {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "job:Pop (i.e. fetch) a Job"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  job)
    _ocm_pop_job
    ;;
  esac
}

function _ocm_pop_job {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_post {
  _arguments \
    '--body[Name fo the file containing the request body. If this isn'\''t given then the body will be taken from the standard input.]:' \
    '*--header[Headers to add to the request. The value must be the name of the header followed by an optional equals sign and then the value of the header. Can be used multiple times to specify multiple headers or multiple values for the same header.]:' \
    '(*-p *--parameter)'{\*-p,\*--parameter}'[Query parameters to add to the request. The value must be the name of the parameter, followed by an optional equals sign and then the value of the parameter. Can be used multiple times to specify multiple parameters or multiple values for the same parameter. Example: --parameter search="username like '\''myname%'\''"]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    '1: :("accounts" "resource_quota" "roles" "sku_rules" "role_bindings" "addons" "versions" "accts" "subscriptions" "subs" "organizations" "clusters" "orgs" "skus" "role" "sku" "cluster" "addon" "version" "ingress" "subscription" "sku_rule" "org" "sub" "idp" "account" "organization" "role_binding" "user" "acct")'
}


function _ocm_push {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "job:Push (i.e. create) a new Job"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  job)
    _ocm_push_job
    ;;
  esac
}

function _ocm_push_job {
  _arguments \
    '(*-p *--parameter)'{\*-p,\*--parameter}'[Query parameters to add to the request. The value must be the name of the parameter, followed by an optional equals sign and then the value of the parameter. Can be used multiple times to specify multiple parameters or multiple values for the same parameter. Example: --parameter search="username like '\''myname%'\''"]:' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_resume {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "cluster:Resume a cluster from hibernation"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  cluster)
    _ocm_resume_cluster
    ;;
  esac
}

function _ocm_resume_cluster {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}


function _ocm_success {
  local -a commands

  _arguments -C \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "job:Mark the Job as a success"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  job)
    _ocm_success_job
    ;;
  esac
}

function _ocm_success_job {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_token {
  _arguments \
    '--generate[Generate a new token.]' \
    '--header[Print the JSON header.]' \
    '--payload[Print the JSON payload.]' \
    '--refresh[Print the refresh token instead of the access token.]' \
    '--signature[Print the signature.]' \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_version {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}

function _ocm_whoami {
  _arguments \
    '--alsologtostderr[log to standard error as well as files]' \
    '--debug[Enable debug mode.]' \
    '--log_backtrace_at[when logging hits line file:N, emit a stack trace]:' \
    '--log_dir[If non-empty, write log files in this directory]:' \
    '--logtostderr[log to standard error instead of files]' \
    '--stderrthreshold[logs at or above this threshold go to stderr]:' \
    '(-v --v)'{-v,--v}'[log level for V logs]:' \
    '--vmodule[comma-separated list of pattern=N settings for file-filtered logging]:'
}
