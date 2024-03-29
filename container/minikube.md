# minikube

## Lifecycle

|     Command                                  |      Description                                          |
|----------------------------------------------|-----------------------------------------------------------|
|`minikube status`                             | Check Status                                              |
|`minikube start`                              | Start Minikube                                            |
|`minikube start --kubernetes-version v1.15.12`|https://github.com/kubernetes/minikube/issues/9792         |
|`minikube pause`                              | Pause Kubernetes without impacting deployed applications  |
|`minikube unpause`                            | Unpause a paused instance                                 |
|`minikube stop`                               | Stop Minikube VM i.e., Halt the cluster                   |
|`minikube ssh`                                | Login into the Minikube VM                                |
|`minikube ip`                                 | View the ip of minikube.                                  |
|`minikube image ls`                           | List images                                               |

## Cleanup

|     Command                                  |      Description                                          |
|----------------------------------------------|-----------------------------------------------------------|
|`minikube delete`                             | Delete Minikube VM                                        |
|`minikube delete --all`                       | Delete all of the minikube clusters                       |

## Others

|     Command                                  |      Description                                                   |
|----------------------------------------------|--------------------------------------------------------------------|
|`minikube addons list`                        | Browse the catalog of easily installed Kubernetes services         |
|`minikube addons enable <addon-name>`         | Enable Minikube addon                                              |
|`minikube addons disable <addon-name>`        | Disable Minikube addon                                             |
|`minikube dashboard`                          | Access the Kubernetes dashboard running within the minikube cluster|
|`minikube dashboard --url`                    | View the dashboard URL.                                            |

## Fix

|     Command                                  |      Description                                                   |
|----------------------------------------------|--------------------------------------------------------------------|
|`minikube update-context`                     | Fix kubectl context.                                               |

## Issues

**Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock**  

Solution: **sudo chmod 777 /var/run/docker.sock**

---

In case you want to start the minikube with higher resource like 8 GB RM and 4 CPU then execute following commands one after the another.

~~~
$ minikube config set cpus 4
$ minikube config set memory 8192
~~~

