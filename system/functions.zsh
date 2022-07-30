function use-operator-sdk {
    CURRENT_BIN=$(readlink ~/.local/bin/operator-sdk)
    NEW_BIN=$1
    echo "current bin: $CURRENT_BIN"
    echo "new bin:     $NEW_BIN"
    ln -s -i $NEW_BIN ~/.local/bin/operator-sdk
}

function use-operator-sdk-0.16.0 {
    use-operator-sdk $HOME/.local/bin/operator-sdk-v0.16.0
}

function use-operator-sdk-1.2.0 {
    use-operator-sdk $HOME/.local/bin/operator-sdk-v1.2.0
}