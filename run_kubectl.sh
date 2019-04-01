#! /bin/bash
export LC_ALL=C
~/go/src/github.com/kubernetes/kubernetes/_output/bin/kubectl --kubeconfig ./ca_files/kubectl-conf-static-passwd.conf $@
