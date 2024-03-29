# kubectl

**kubectl command syntax:** *kubectl [command]	[TYPE]	[NAME]	[flags]*  

-	command - describe what you want to do? - get, descibe, logs, exec,..  
-	TYPE	- on what type of objects? - pods, deployment, nodes,..  
-	NAME	- object names  
-	flags 	- any special requests  

--- 

## info

|  Command                             |                     Description                   |
|--------------------------------------|---------------------------------------------------|
|`kubectl api-resources`               |                                                   |
|`kubectl cluster-info`                |kubernetes Cluster Info                       	   |
|`kubectl config view`                 |displays config info about kubectl command itself  |
|`kubectl get all`                     |View resources in default namespace                |
|`kubectl get all -n [NAME-SPACE]`     |View resources in specified namespace              |

---  

## Monitoring

### Nodes

|                  Command           		|                     Description              			              |
|-------------------------------------------|---------------------------------------------------------------------|
|`kubectl get nodes`                 		|Kubernetes node status                        			              |
|`kubectl get nodes -o=wide`             	|Kubernetes node status with additional details                       |

### Pods

|                  Command           		              |                     Description              			              |
|---------------------------------------------------------|-----------------------------------------------------------------------|
|`kubectl describe pod`                                   |get more information about the pods           	                      |
|`kubectl describe pod [POD-NAME]`                        |get more information about the monolith pod   	                      |
|`kubectl get pods -o=yaml`                               |list all pods running in the default namespace, output in YAML format  |
|`kubectl get pods -o=wide`                               |list all pods running in the default namespace with additional info.   |
|`kubectl get pods --show-labels`                         |list all pods running in the default namespace with label details.     |
|`kubectl get pods --show-labels -l [LABEL]=[LABEL-VALUE]`|list all pods running in the default namespace with specific labels.   | 
|`kubectl get pods --all-namespaces`                      |list all pods running in all namespaces                                |
|`kubectl get pods -n [NAME-SPACE]`                       |list all pods running in the specified namespace                       |
|`kubectl get po -A`                                      |list all pods running in all namespaces                                |
|`kubectl get pod my-test-app`                            |list all pods running in *my-test-app*                                 |

### Pod Logs

|                  Command                                                  |                     Description                                                                                    |
|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|`kubectl logs [POD-NAME]`                                                  |view the logs from a Pod                                                                                            |
|`kubectl logs -f [POD-NAME]`                                               |get a stream of Pod logs happening in real-time                                                                     |


### Deployments

|                  Command           		         |                     Description              			   |
|----------------------------------------------------|-------------------------------------------------------------|
|`kubectl describe deployment [DEPLOYMENT_NAME]`     |get detailed info about deployment                           |
|`kubectl describe deploy`                           |get detailed info about deployment                           |
|`kubectl get deploy`                                |View deployment info                                         |
|`kubectl get deployments`                           |View deployment info                                         |
|`kubectl get deployments -o=wide`                   |View deployment with additional info                         |
|`kubectl get deployment [DEPLOYMENT_NAME] -o yaml`  |inspect your deplyment with output in YAML format            |

### Services

|                  Command           		                  |                     Description                                |
|-------------------------------------------------------------|----------------------------------------------------------------|
|`kubectl describe services`                                  |get more information about the services                         |
|`kubectl describe services [SERVICE-NAME] -n [NAME-SPACE]`   |get information about the services from a specified name space. |
|`kubectl describe services [SERVICE-NAME] \| grep Endpoints` |list of endpoints on the monolith service                       |
|`kubectl get services`              		                  |List services public IP address                                 |

### Namespaces

|                  Command           		     |                     Description              			           |
|------------------------------------------------|---------------------------------------------------------------------|
|`kubectl get namespaces`             		     |View the namespaces in a system                                      |
|`kubectl get ns`             		             |View the namespaces in a system                                      |
|`kubectl get namespaces [NAMESPACE-NAME]`       |View the namespaces details                                          |
|`kubectl get namespaces --show-labels`          |View the namespaces details with labels                              |
|`kubectl describe namespaces [NAMESPACE-NAME]`  |get detailed information about a namespaces                          |
|`kubectl create namespace [NAMESPACE-NAME]`     |create a namespace                                                   |

### Various

|                  Command           		     |                     Description              			           |
|------------------------------------------------|---------------------------------------------------------------------|
|`kubectl get all`                   		     |See what's in the cluster                     			           |
|`kubectl get replicasets`                       |View replicas                                                        |
|`kubectl get persistentvolumeclaim`             |View Persistent Volume Claims                                        |
|`kubectl get events`             		         |View Cluster events                                                  |
|`kubectl get pod,svc -n kube-system`            |View the Pod and Service of kube-system namespace                    |

---  

## scaling

### Service Scaling

|                  Command                                                         |                     Description                                                           |
|----------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
|`kubectl scale [SERVICE-NAME] --replicas=n`                                       |Scale a service. Ex: `kubectl scale nginx --replicas=3`                                    |
|`kubectl autoscale [SERVICE-NAME] --min=x --max=y --cpu=z`                        |Autoscale pods based on CPU usage. Ex: `kubectl autoscale nginx --min=10 --max=15 --cpu=80`|

### Deployment Scaling

|                  Command                                                         |                     Description                                                           |
|----------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
|`kubectl scale deployment [DEPLOYMENT_NAME] -replicas=n`                          |scale deployment manually. **n** is number of replicas. Ex: 5                              |    
|`kubectl autoscale deployment [DEPLOYMENT_NAME] --min=5 --max=15 --cpu-percent=75`|autoscale deployment manually                                                              |

---  

## Rollout

|                  Command                                           |                     Description                             |
|--------------------------------------------------------------------|-------------------------------------------------------------|
|`kubectl rollout undo deployment [DEPLOYMENT_NAME]`                 | revert to previous version of deployment                    |
|`kubectl rollout undo deployment [DEPLOYMENT_NAME] --to-revision=2` | revert to specific version                                  |
|`kubectl rollout history deployment [DEPLOYMENT_NAME] --revision=2` | inspect rollout history                                     |
|`kubectl rollout pause deployment [DEPLOYMENT_NAME]`                | pause deployment                                            |
|`kubectl rollout resume deployment [DEPLOYMENT_NAME]`               | resume deployment                                           |
|`kubectl rollout status deployment [DEPLOYMENT_NAME]`               | monitor rollout status for a given deployment               |           
|`kubectl rollout status deployment`                                 | monitor rollout status                                      |                                 

---  

## Deployment

|                  Command                                    |                     Description                             |
|-------------------------------------------------------------|-------------------------------------------------------------|
|`kubectl apply -f [DEPLOYMENT_FILE.YAML]`                    |create or update a deployment                                |
|`kubectl apply -f .`                                         |apply all .YAML files in a directory                         |


--- 

## Cleanup

|                  Command                           |                     Description                                                             |
|----------------------------------------------------|---------------------------------------------------------------------------------------------|
|`kubectl delete deployment [DEPLOYMENT_NAME]`       |delete deployment                                                                            |
|`kubectl delete service [SERVICE_NAME]`             |delete service                                                                               |
|`kubectl delete replicaset [REPLICA_SET_NAME]`      |delete replica set                                                                           |
|`kubectl delete po [POD_NAME]`                      |delete the named pod. Can also delete svc, rs, deploy                                        |
|`kubectl delete po --all`                           |delete all pods (also svc, rs, deploy)                                                       |
|`kubectl delete -f .`                               |delete all resources based on the files present in the folder where this command is executed.|
|`kubectl delete node [NODE_NAME]`                   |delete the specified node.                                                                   |
|`kubectl delete namespaces [NAMEPACE_NAME]`         |delete a namespace. This deletes everything under the namespace                              |

--- 

## others

|                  Command                                                  |                     Description                                                                                    |
|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|`kubectl exec [POD-NAME] -- [COMMAND]`                                     |Run a command in a pod                                                                                              |
|`kubectl exec [POD-NAME] --stdin --tty -c [POD-NAME] /bin/sh`              |Run an interactive shell inside a Pod. This can come in handy when you want to troubleshoot from within a container.|
|`kubectl –it exec [POD-NAME] -- [COMMAND]`                                 |Execute the specified command in the pod’s container.                                                               |
|`kubectl –it exec [POD-NAME] -- sh`                                        |Get a shell into the container with interactive tele-type emulation.                                                |
|`kubectl expose deployments [CONTAINER-NAME] --port 80 --type LoadBalancer`|Create a Service object that exposes the deployment                                                                 |
|`kubectl run [CONTAINER-NAME] --image=[IMAGE-NAME:VERSION]`                |Run a container in a pod in kubernetes                                                                              |

--- 
