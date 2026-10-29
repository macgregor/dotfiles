alias kc='kubectl'
alias oc-get-all='kc-get-all --binary oc'

function kc-get-all {
    function usage {
        cat <<EOF
Standard "kubectl get all" doesnt actually give you all resources, rather it just gives you a list of common resources such as pods, deployments, etc. This function will actually get all resources on the the cluster which can be handy when you dont know what you are looking for by listing all api-resources on the cluster to explicitly use in the get command.

USAGE: kc-get-all [-b|--binary <kubectl|oc>] [-i|--ignore-crs <grep-regex-pattern>] [--namespaced <true|false>] [-h|--help] [-- <kubectl-args>]

OPTIONS:
-b|--binary <kubectl|oc>                The binary to use. Can be a simple string command (e.g. kubectl) or the full path to the binary. Default: kubectl
-i|--ignore-crs <grep-regex-pattern>    A grep regex pattern of CRs to ignore ignore CRs. Default: ""
--namespaced                            Only get namespaced resources. Default: true
-h|--help                               Show this help message
-- <kubectl-args>                       Additional args to pass to the kubectl command, e.g. -n some-namespace

Examples:
# kubectl get all
kc-get-all

# oc get all
kc-get-all --binary oc

# oc get all within a namespace
kc-get-all --binary oc -- -n openshift-oauth-apiserver

# kubectl get all but ignore CRs that match the regex pattern
kc-get-all --ignore-crs "events.events.k8s.io|events"
EOF
    }

    clusterCtlCmd="kubectl"
    ignoreCRs=""
    namespaced="true"

    parsedArgs=$(getopt -o 'b:,i:,h' --long 'binary:,ignore-crs:,namespaced:,help' -- "$@")
    eval set -- "$parsedArgs"

    while true; do
        case "$1" in
            -b|--binary)
                clusterCtlCmd="$2";	shift 2
                if [ ! -f "$clusterCtlCmd" ] && ! clusterCtlCmdPath=$(which "$clusterCtlCmd" &>/dev/null); then
                    echo "ERROR: The binary '$clusterCtlCmd' doesnt seem to be a valid cluster ctl binary." 1>&2
                    return 1
                fi
                ;;
            -i|--ignore-crs)
                ignoreCRs="$2";	shift 2
                ;;
            --namespaced)
                namespaced="$2"; shift 2
                if [[ "$namespaced" != "true" && "$namespaced" != "false" ]]; then
                    echo "ERROR: --namespaced must be either true or false, got '$namespaced'" 1>&2
                    return 1
                fi
                ;;
            --)
                shift
                break
                ;;
            -h|--help)
                usage; return 0
                ;;
            *)
                echo "ERROR: Unexpected option: $1." 1>&2
                usage;
                return 1
                ;;
        esac
    done

    if [ $# -gt 0 ]; then
        echo "Additional oc/kubectl args: $@" 1>&2
    fi

    # get all cluster api-resources
    if ! all=$($clusterCtlCmd api-resources --verbs=list --namespaced=$namespaced -o name | uniq); then
        echo "Error: could not get list of resources from from the cluster" 1>&2
        return 1
    fi

    # filter out CRs
    if [ -n "$ignoreCRs" ]; then
        all=$(echo "$all" | grep -Ev "$ignoreCRs")
    fi

    # new line separated list to comma separated list
    all=$(echo "$all" | awk -vORS=, '{ print $1 }' | sed 's/,$//')

    echo -e "Executing:\n$clusterCtlCmd get $all --show-kind --ignore-not-found "$@"" 1>&2
    echo "This may take a while..." 1>&2
    $clusterCtlCmd get $all --show-kind --ignore-not-found "$@"
}