export ETCDCTL_API=3
export instance=newnuc
export EXTERNAL_IP=192.168.0.100
export INTERNAL_IP=127.0.0.1
export KKUBERNETES_HOSTNAMES=kubernetes,kubernetes.default,kubernetes.default.svc,kubernetes.default.svc.cluster,kubernetes.svc.cluster.loca,$instance
export KUBERNETES_PUBLIC_ADDRESS=192.168.0.100

export ROOTDIR=$HOME/run-k8s
export CERTDIR=$ROOTDIR/cert
export KUBECONFDIR=$ROOTDIR/kubeconfig

export ETCD_PEER_URL=https://127.0.0.1:2380
export ETCD_SERVERS=https://127.0.0.1:2379

export SERVICE_CLUSTER_IP_RANGE="172.20.0.0/24"
export SERVICE_NODE_PORT_RANGE=30000-32767

export CLUSTER_CIDR=172.16.0.0/16