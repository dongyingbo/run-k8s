source ./env.sh

kube-proxy --kubeconfig kube-proxy.kubeconfig --cluster-cidr $CLUSTER_CIDR -v 2
