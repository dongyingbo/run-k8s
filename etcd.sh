source ./env.sh

etcd \
--data-dir=/home/alex/etcd.data \
--name=alex-hp \
--initial-advertise-peer-urls $ETCD_PEER_URL \
--listen-peer-urls $ETCD_PEER_URL  \
--advertise-client-urls $ETCD_SERVERS \
--listen-client-urls $ETCD_SERVERS \
--cert-file=$CERTDIR/kubernetes.pem \
--key-file=$CERTDIR/kubernetes-key.pem \
--peer-cert-file=$CERTDIR/kubernetes.pem \
--peer-key-file=$CERTDIR/kubernetes-key.pem \
--trusted-ca-file=$CERTDIR/ca.pem \
--peer-trusted-ca-file=$CERTDIR/ca.pem \
--peer-client-cert-auth \
--client-cert-auth \

