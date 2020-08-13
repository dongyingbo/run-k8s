#! /bin/bash
export LC_ALL=C
kubectl --kubeconfig ./kubectl.kubeconfig $@
