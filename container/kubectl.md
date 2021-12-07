# kubectl

## info

|                  Command                                                  |                     Description                                                                                    |
|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|`kubectl cluster-info`                                                     |kubernetes Cluster Info                                                                                             |
|`kubectl describe pods [POD-NAME]`                                         |get more information about the monolith pod                                                                         |
|`kubectl describe services [SERVICE-NAME] \| grep Endpoints`               |list of endpoints on the monolith service																		     |

## get

|                  Command           		|                     Description              			|
|-------------------------------------------|-------------------------------------------------------|
|`kubectl get nodes`                 		|Kubernetes node status                        			|
|`kubectl get pods`                  		|list all pods running in the default namespace			|
|`kubectl get all`                   		|See what's in the cluster                     			|
|`kubectl get services`              		|List services public IP address               			|
|`kubectl get replicasets`                  |View replicas                                          |
|`kubectl get deployments`                  |View replica info                                      |
|`kubectl get namespace`             		|                                             			|
|`kubectl get pods --all-namespaces`     	|                                            			|
|`kubectl get nodes -o=wide`             	|                                             			|

## scaling

|                  Command                                                  |                     Description                                                                                    |
|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|`kubectl scale [SERVICE-NAME] --replicas=n`                                |Scale a service. Ex: `kubectl scale nginx --replicas=3`                                    |
|`kubectl autoscale [SERVICE-NAME] --min=x --max=y --cpu=z`                 |Autoscale pods based on CPU usage. Ex: `kubectl autoscale nginx --min=10 --max=15 --cpu=80`|

## logs

|                  Command                                                  |                     Description                                                                                    |
|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|`kubectl logs [POD-NAME]`                                                  |view the logs from a Pod                                                                                            |
|`kubectl logs -f [POD-NAME]`                                               |get a stream of Pod logs happening in real-time                                                                     |

## config file

|                  Command                                                  |                     Description                                                                                    |
|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|`kubectl apply -f example-deployment-config-file.yaml`                     |Use updated config file                                                                                             |

## others

|                  Command                                                  |                     Description                                                                                    |
|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|`kubectl exec [POD-NAME] --stdin --tty -c [POD-NAME] /bin/sh`              |run an interactive shell inside a Pod. This can come in handy when you want to troubleshoot from within a container.|
|`kubectl expose deployments [CONTAINER-NAME] --port 80 --type LoadBalancer`|Create a Service object that exposes the deployment                                                                 |
|`kubectl run [CONTAINER-NAME] --image=[IMAGE-NAME:VERSION]`                |Run a container in a pod in kubernetes                                                                              |

