#Creating a cluster with kubeadm

#ON Master:

sudo kubeadm init

A token will be generated, do not paste it now

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/confg 
sudo chown $(id -u):$(id -g) $HOME/.kube/confg

#On SLAVE:

sudo <paste the token>

#Installing a Pod network add-on

#ON MASTER:

kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/master/manifests/calico.yaml

kubectl get nodes
