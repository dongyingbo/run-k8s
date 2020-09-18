source ./env.sh

kube-controller-manager \
  --address=0.0.0.0 \
  --cluster-cidr=$CLUSTER_CIDR \
  --cluster-name=kubernetes \
  --cluster-signing-cert-file=$CERTDIR/ca.pem \
  --cluster-signing-key-file=$CERTDIR/ca-key.pem \
  --kubeconfig=$KUBECONFDIR/kube-controller-manager.kubeconfig \
  --leader-elect=true \
  --service-cluster-ip-range=$SERVICE_CLUSTER_IP_RANGE \
  --v=4 \
  --service-account-private-key-file=$CERTDIR/service-account-key.pem \
  --allocate-node-cidrs=true \
  --use-service-account-credentials=true
  #--root-ca-file=ca.pem \
  #--controllers "*"
