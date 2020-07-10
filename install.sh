#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

make \
    GOGCFLAGS="-e" \
    GOGCFLAGS="-N -l"

cp -fv ./_output/local/bin/linux/amd64/kubectl /usr/bin/kubectl
cp -fv ./_output/local/bin/linux/amd64/kubeadm /usr/bin/kubeadm
