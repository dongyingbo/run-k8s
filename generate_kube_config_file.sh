
source ./env.sh

# kubelet 
kubectl config set-cluster kubernetes-the-hard-way \
	    --certificate-authority=$CERTDIR/ca.pem \
	        --embed-certs=true \
		    --server=https://${KUBERNETES_PUBLIC_ADDRESS}:6443 \
		        --kubeconfig=$KUBECONFDIR/${instance}.kubeconfig

  kubectl config set-credentials system:node:${instance} \
	      --client-certificate=$CERTDIR/${instance}.pem \
	          --client-key=$CERTDIR/${instance}-key.pem \
		      --embed-certs=true \
		          --kubeconfig=$KUBECONFDIR/${instance}.kubeconfig

    kubectl config set-context default \
	        --cluster=kubernetes-the-hard-way \
		    --user=system:node:${instance} \
		        --kubeconfig=$KUBECONFDIR/${instance}.kubeconfig

      kubectl config use-context default --kubeconfig=$KUBECONFDIR/${instance}.kubeconfig



#kube proxy
kubectl config set-cluster kubernetes-the-hard-way \
	    --certificate-authority=$CERTDIR/ca.pem \
	        --embed-certs=true \
		    --server=https://${KUBERNETES_PUBLIC_ADDRESS}:6443 \
		        --kubeconfig=$KUBECONFDIR/kube-proxy.kubeconfig

  kubectl config set-credentials system:kube-proxy \
	      --client-certificate=$CERTDIR/kube-proxy.pem \
	          --client-key=$CERTDIR/kube-proxy-key.pem \
		      --embed-certs=true \
		          --kubeconfig=$KUBECONFDIR/kube-proxy.kubeconfig

    kubectl config set-context default \
	        --cluster=kubernetes-the-hard-way \
		    --user=system:kube-proxy \
		        --kubeconfig=$KUBECONFDIR/kube-proxy.kubeconfig

      kubectl config use-context default --kubeconfig=$KUBECONFDIR/kube-proxy.kubeconfig


# kue control

kubectl config set-cluster kubernetes-the-hard-way \
	    --certificate-authority=$CERTDIR/ca.pem \
	        --embed-certs=true \
		    --server=https://127.0.0.1:6443 \
		        --kubeconfig=$KUBECONFDIR/kube-controller-manager.kubeconfig

  kubectl config set-credentials system:kube-controller-manager \
	      --client-certificate=$CERTDIR/kube-controller-manager.pem \
	          --client-key=$CERTDIR/kube-controller-manager-key.pem \
		      --embed-certs=true \
		          --kubeconfig=$KUBECONFDIR/kube-controller-manager.kubeconfig

    kubectl config set-context default \
	        --cluster=kubernetes-the-hard-way \
		    --user=system:kube-controller-manager \
		        --kubeconfig=$KUBECONFDIR/kube-controller-manager.kubeconfig

      kubectl config use-context default --kubeconfig=$KUBECONFDIR/kube-controller-manager.kubeconfig


# kube-scheduler

  kubectl config set-cluster kubernetes-the-hard-way \
	      --certificate-authority=$CERTDIR/ca.pem \
	          --embed-certs=true \
		      --server=https://127.0.0.1:6443 \
		          --kubeconfig=$KUBECONFDIR/kube-scheduler.kubeconfig

    kubectl config set-credentials system:kube-scheduler \
	        --client-certificate=$CERTDIR/kube-scheduler.pem \
		    --client-key=$CERTDIR/kube-scheduler-key.pem \
		        --embed-certs=true \
			    --kubeconfig=$KUBECONFDIR/kube-scheduler.kubeconfig

      kubectl config set-context default \
	          --cluster=kubernetes-the-hard-way \
		      --user=system:kube-scheduler \
		          --kubeconfig=$KUBECONFDIR/kube-scheduler.kubeconfig

        kubectl config use-context default --kubeconfig=$KUBECONFDIR/kube-scheduler.kubeconfig


# admin

 kubectl config set-cluster kubernetes-the-hard-way \
	     --certificate-authority=$CERTDIR/ca.pem \
	         --embed-certs=true \
		     --server=https://127.0.0.1:6443 \
		         --kubeconfig=$KUBECONFDIR/admin.kubeconfig

   kubectl config set-credentials admin \
	       --client-certificate=$CERTDIR/admin.pem \
	           --client-key=$CERTDIR/admin-key.pem \
		       --embed-certs=true \
		           --kubeconfig=$KUBECONFDIR/admin.kubeconfig

     kubectl config set-context default \
	         --cluster=kubernetes-the-hard-way \
		     --user=admin \
		         --kubeconfig=$KUBECONFDIR/admin.kubeconfig

       kubectl config use-context default --kubeconfig=$KUBECONFDIR/admin.kubeconfig


# remote client

  kubectl config set-cluster kubernetes-the-hard-way \
    --certificate-authority=$CERTDIR/ca.pem \
    --embed-certs=true \
    --server=https://${KUBERNETES_PUBLIC_ADDRESS}:6443

  kubectl config set-credentials admin \
    --client-certificate=$CERTDIR/admin.pem \
    --client-key=$CERTDIR/admin-key.pem

  kubectl config set-context kubernetes-the-hard-way \
    --cluster=kubernetes-the-hard-way \
    --user=admin

  kubectl config use-context kubernetes-the-hard-way
