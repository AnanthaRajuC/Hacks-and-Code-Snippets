# kubectl

**kubectl command syntax:** *kubectl [command]	[TYPE]	[NAME]	[flags]*  

-	command - describe what you want to do? - get, descibe, logs, exec,..  
-	TYPE	- on what type of objects? - pods, deployment, nodes,..  
-	NAME	- object names  
-	flags 	- any special requests  


## info

|                  Command                                    |                     Description             	 |
|-------------------------------------------------------------|--------------------------------------------------|
|`kubectl cluster-info`                                       |kubernetes Cluster Info                       	 |
|`kubectl describe pods [POD-NAME]`                           |get more information about the monolith pod   	 |
|`kubectl describe services [SERVICE-NAME] \| grep Endpoints` |list of endpoints on the monolith service	     |
|`kubectl config view`                                        |displays config info about kubectl command itself |

## get

|                  Command           		|                     Description              			              |
|-------------------------------------------|---------------------------------------------------------------------|
|`kubectl get nodes`                 		|Kubernetes node status                        			              |
|`kubectl get pods -o=yaml`                 |list all pods running in the default namespace, output in YAML format|
|`kubectl get pod my-test-app`              |list all pods running in *my-test-app*                               |
|`kubectl get all`                   		|See what's in the cluster                     			              |
|`kubectl get services`              		|List services public IP address               			              |
|`kubectl get replicasets`                  |View replicas                                                        |
|`kubectl get deployments`                  |View replica info                                                    |
|`kubectl get namespace`             		|                                             			              |
|`kubectl get pods --all-namespaces`     	|                                            			              |
|`kubectl get nodes -o=wide`             	|                                             			              |

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

## Deployment

|                  Command                                                         |                     Description                             |
|----------------------------------------------------------------------------------|-------------------------------------------------------------|
|`kubectl apply -f [DEPLOYMENT_FILE.YAML]`                                         |create or update a deployment                                |
|`kubectl get deployment [DEPLOYMENT_NAME] -o yaml`                                |inspect your deplyment with output in YAML format            |
|`kubectl describe deployment [DEPLOYMENT_NAME]`                                   |get detailed info about deployment                           |
|`kubectl scale deployment [DEPLOYMENT_NAME] -replicas=n`                          |scale deployment manually. **n** is number of replicas. Ex: 5|    
|`kubectl autoscale deployment [DEPLOYMENT_NAME] --min=5 --max=15 --cpu-percent=75`|autoscale deployment manually                                |
|`kubectl delete deployment [DEPLOYMENT_NAME]`                                     |delete deployment                                            |

## Rollout

|                  Command                                           |                     Description                             |
|--------------------------------------------------------------------|-------------------------------------------------------------|
|`kubectl rollout undo deployment [DEPLOYMENT_NAME]`                 | revert to previous version of deployment                    |
|`kubectl rollout undo deployment [DEPLOYMENT_NAME] --to-revision=2` | revert to specific version                                  |
|`kubectl rollout history deployment [DEPLOYMENT_NAME] --revision=2` | inspect rollout history                                     |
|`kubectl rollout pause deployment [DEPLOYMENT_NAME]`                | pause deployment                                            |
|`kubectl rollout resume deployment [DEPLOYMENT_NAME]`               | resume deployment                                           |
|`kubectl rollout status deployment`                                 | monitor rollout status                                      |                             

## others

|                  Command                                                  |                     Description                                                                                    |
|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|`kubectl exec [POD-NAME] --stdin --tty -c [POD-NAME] /bin/sh`              |run an interactive shell inside a Pod. This can come in handy when you want to troubleshoot from within a container.|
|`kubectl expose deployments [CONTAINER-NAME] --port 80 --type LoadBalancer`|Create a Service object that exposes the deployment                                                                 |
|`kubectl run [CONTAINER-NAME] --image=[IMAGE-NAME:VERSION]`                |Run a container in a pod in kubernetes                                                                              |

