# GCP CLI Commands

#### gcloud
command-line tool for Google Cloud Platform. It comes pre-installed on Cloud Shell.

|                  Command                                                                   |                     Description                                                                    |
|--------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
|`gcloud auth login [ACCOUNT]`                                                               |authorize gcloud to access the Cloud Platform with Google user credentials                          |
|`gcloud config set account [ACCOUNT]`                                                       |set account                                                                                         |
|`gcloud config set project [PROJECT]`                                                       |set project                                                                                         |
|`gcloud components update`                                                                  |update all the installed Google Cloud SDK components.                                               |
|`gcloud info --format="value(installation.sdk_root)"`                                       |Find out where Google Cloud SDK is installed                                                        |
|`gcloud auth list`                                                                          |list the active account name                                                                        |
|`gcloud config list project`                                                                |list the project ID                                                                                 |
|`gcloud config set compute/zone [ZONE-NAME]`                                                |set your default compute zone                                                                       |
|`gcloud container clusters create [CLUSTER-NAME]`                                           |Create a Kubernetes Engine cluster (Kubernetes Engine will provision a few Virtual Machines)        |
|`gcloud container clusters create [CLUSTER-NAME] --num-nodes 2 --machine-type n1-standard-2`|Create a kubernetes cluster with parameters (number of nodes, machine type).                        |
|`gcloud container clusters get-credentials [CLUSTER-NAME]`                                  |to interact with the cluster.After creating your cluster, you need to get authentication credentials|
|`gcloud container clusters delete [CLUSTER-NAME]`                                           |delete a cluster                                                                                    |
|`exit`                                                                                      |log out of the interactive shell                                                                    |

|                  Command                                 |                     Description                                                                    |
|----------------------------------------------------------|----------------------------------------------------------------------------------------------------|
|`kubectl get pods`                                        |list all pods running in the default namespace                                                      |
|`kubectl get services`                                    |List services                                                                                       |
|`kubectl describe pods [POD-NAME]`                        |get more information about the monolith pod                                                         |
|`kubectl logs [POD-NAME]`                                 |view the logs from a Pod                                                                            |
|`kubectl logs -f [POD-NAME]`                              |get a stream of Pod logs happening in real-time                                                     |

#### cto delete a cluster
##### `kubectl expose deployment [CONTAINER-NAME] --port 80 --type LoadBalancer`

#### run an interactive shell inside a Pod. This can come in handy when you want to troubleshoot from within a container.
##### `kubectl exec [POD-NAME] --stdin --tty -c [POD-NAME] /bin/sh`

#### list of endpoints on the monolith service
##### `kubectl describe services [SERVICE-NAME] | grep Endpoints`

#### Download and install the helm binary
##### `wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz`

