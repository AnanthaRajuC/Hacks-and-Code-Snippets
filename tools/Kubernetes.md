# Kubernetes

## minikube

|     Command                                  |      Description                                 |
|----------------------------------------------|--------------------------------------------------|
|`minikube start`                              | Start Minikube                                   |
|`minikube start --kubernetes-version v1.15.12`|https://github.com/kubernetes/minikube/issues/9792|
|`minikube stop`                               | Stop Minikube                                    |
|`minikube delete`                             | Delete Minikube                                  |
|`minikube status`                             | Check Status                                     |
|`minikube addons list`                        | See Minikube addons list                         |
|`minikube addons enable <addon-name>`         | Enable Minikube addon                            |
|`minikube dashboard`                          | Enable and Access Kubernetes dashboard           |

## kubectl

|     Command                       |      Description       |
|-----------------------------------|------------------------|
|`kubectl get nodes`                | Kubernetes node status |
|`kubectl cluster-info`             | kubernetes Cluster Info|
|`kubectl get pods --all-namespaces`|                        |
|`kubectl get namespace`            |                        |
|`kubectl get nodes -o=wide`        |                        |
|`kubectl get pods`                 |                        |


