kube-controller-manager \
  --address=0.0.0.0 \
  --cluster-cidr=10.20.0.0/16 \
  --cluster-name=kubernetes \
  --cluster-signing-cert-file=ca.pem \
  --cluster-signing-key-file=ca-key.pem \
  --kubeconfig=./kube-controller-manager-static-token.kubeconfig \
  --leader-elect=true \
  --service-cluster-ip-range=10.10.0.0/24 \
  --use-service-account-credentials=false \
  --v=4 \
  --service-account-private-key-file=service-account-key.pem \
  --allocate-node-cidrs=true
  #--root-ca-file=ca.pem \
  #--controllers "*"
