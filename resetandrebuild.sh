kubeadm reset
rm -rf /etc/cni/net.d
rm -rf $HOME/.kube/config
cka/setup-container.sh
sudo cka/setup-kubetools-specific-version.sh
kubeadm init
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

