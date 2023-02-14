# kubernetes install minicube
# https://kubernetes.io/docs/tutorials/kubernetes-basics/create-cluster/cluster-intro/

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# start minikube                     
minikube start

# check status
kubectl get po -A

# stop minikube
minikube stop
