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

In case you want to start the minikube with higher resource like 8 GB RM and 4 CPU then execute following commands one after the another.

~~~
$ minikube config set cpus 4
$ minikube config set memory 8192
$ minikube delete
$ minikube start
~~~

## kubectl

|     Command                       |      Description       |
|-----------------------------------|------------------------|
|`kubectl get nodes`                | Kubernetes node status |
|`kubectl cluster-info`             | kubernetes Cluster Info|
|`kubectl get pods --all-namespaces`|                        |
|`kubectl get namespace`            |                        |
|`kubectl get nodes -o=wide`        |                        |
|`kubectl get pods`                 |                        |


