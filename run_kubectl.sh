#! /bin/bash
export LC_ALL=C
~/go/src/github.com/kubernetes/kubernetes/_output/bin/kubectl --kubeconfig ./kubectl-conf-static-passwd.conf $@
