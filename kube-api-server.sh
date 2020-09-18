source ./env.sh

kube-apiserver \
  --advertise-address=192.168.0.100 \
  --allow-privileged=true \
  --apiserver-count=1 \
  --audit-log-maxage=30 \
  --audit-log-maxbackup=3 \
  --audit-log-maxsize=100 \
  --audit-log-path=/var/log/audit.log \
  --authorization-mode=Node,RBAC \
  --bind-address=0.0.0.0 \
  --enable-admission-plugins=NamespaceLifecycle,NodeRestriction,LimitRanger,ServiceAccount,DefaultStorageClass,ResourceQuota \
  --enable-swagger-ui=true \
  --etcd-servers=$ETCD_SERVERS \
  --event-ttl=1h \
  --runtime-config=api/all=true \
  --service-cluster-ip-range=$SERVICE_CLUSTER_IP_RANGE \
  --service-node-port-range=$SERVICE_NODE_PORT_RANGE \
  --v=1 \
  --insecure-bind-address=0.0.0.0 \
  --storage-media-type=application/json \
  --service-account-key-file=$CERTDIR/service-account.pem \
  --client-ca-file=$CERTDIR/ca.pem \
  --etcd-cafile=$CERTDIR/ca.pem \
  --etcd-certfile=$CERTDIR/kubernetes.pem \
  --etcd-keyfile=$CERTDIR/kubernetes-key.pem \
  --kubelet-certificate-authority=$CERTDIR/ca.pem \
  --kubelet-client-certificate=$CERTDIR/kubernetes.pem \
  --kubelet-client-key=$CERTDIR/kubernetes-key.pem \
  --kubelet-https=true \
  --service-account-key-file=$CERTDIR/service-account.pem \
  --tls-cert-file=$CERTDIR/kubernetes.pem \
  --tls-private-key-file=$CERTDIR/kubernetes-key.pem
  #--experimental-encryption-provider-config=encryption-config.yaml \
  # --token-auth-file=./static-token.cvs \
  #--kubelet-https=false \
