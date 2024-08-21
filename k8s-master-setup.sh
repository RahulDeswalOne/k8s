## Execute ONLY on "Master Node"


sudo kubeadm config images pull

sudo kubeadm init

mkdir -p "$HOME"/.kube
sudo cp -i /etc/kubernetes/admin.conf "$HOME"/.kube/config
sudo chown "$(id -u)":"$(id -g)" "$HOME"/.kube/config


# Network Plugin = calico

kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/master/manifests/calico.yaml
--------------------------------------------------------

## Execute on ALL of your Worker Node's

1. Perform pre-flight checks


   sudo kubeadm reset pre-flight checks


2. Paste the join command you got from the master node and append `--v=5` at the end but first use sudo su command to become root (avoid using sudo your-token).

   sudo su
   <your-token --v=5>


## Verify Cluster Connection

**On Master Node:**


kubectl get nodes
