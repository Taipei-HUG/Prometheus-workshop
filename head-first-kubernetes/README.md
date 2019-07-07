# Head First Kubernetes


### Demo Selector with kubectl 
- `$ kubectl get pod -n kube-system --show-labels`
- `$ kubectl get pod -n kube-system --show-labels -l k8s-app=kube-dns`
- `$ kubectl get pod -n kube-system --show-labels -l k8s-app=kube-dns -o wide`


