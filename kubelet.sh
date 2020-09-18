source ./env.sh

kubelet \
    --config=kubelet-config.yaml \
    --image-pull-progress-deadline=2m \
    --kubeconfig=kubeconfig/newnuc.kubeconfig \
    --network-plugin=cni \
    --register-node=true \
    --v=2 \
    --container-runtime=docker \
    --fail-swap-on=false \
    --reserved-cpus=6,7 \
    --cpu-manager-policy=static
    # --container-runtime=remote \
    # --container-runtime-endpoint=/run/containerd/containerd.sock \
