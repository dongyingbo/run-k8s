~/go/src/github.com/kubernetes/kubernetes/_output/bin/kubelet \
    --config=kubelet-config.yaml \
    --image-pull-progress-deadline=2m \
    --kubeconfig=z-nuc-12-static-pw.kubeconfig \
    --network-plugin=cni \
    --register-node=true \
    --v=4 \
    --cgroup-driver=cgroupfs \
    --container-runtime=docker 
    # --container-runtime=remote \
    # --container-runtime-endpoint=/run/containerd/containerd.sock \
