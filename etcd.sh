etcd \
--data-dir=/home/alex/etcd.data \
--name=alex-hp \
--initial-advertise-peer-urls https://127.0.0.1:2380 \
--listen-peer-urls https://127.0.0.1:2380  \
--advertise-client-urls https://127.0.0.1:2379 \
--listen-client-urls https://127.0.0.1:2379 \
--cert-file=./kubernetes.pem \
--key-file=./kubernetes-key.pem \
--peer-cert-file=./kubernetes.pem \
--peer-key-file=./kubernetes-key.pem \
--trusted-ca-file=./ca.pem \
--peer-trusted-ca-file=./ca.pem \
--peer-client-cert-auth \
--client-cert-auth \

