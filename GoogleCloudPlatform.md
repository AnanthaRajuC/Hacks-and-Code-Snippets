# GCP CLI Commands

|                  Command                                 |                     Description                                                                    |
|----------------------------------------------------------|----------------------------------------------------------------------------------------------------|
|`gcloud components update`                                | update all the installed Google Cloud SDK components.                                              |
|`gcloud info --format="value(installation.sdk_root)"`     |Find out where Google Cloud SDK is installed                                                        |
|`gcloud auth list`                                        |list the active account name                                                                        |
|`gcloud config list project`                              |list the project ID                                                                                 |
|`gcloud config set compute/zone [ZONE-NAME]`              |set your default compute zone                                                                       |
|`gcloud container clusters create [CLUSTER-NAME]`         |Create a Kubernetes Engine cluster (Kubernetes Engine will provision a few Virtual Machines)        |
|`gcloud container clusters get-credentials [CLUSTER-NAME]`|to interact with the cluster.After creating your cluster, you need to get authentication credentials|
|`gcloud container clusters delete [CLUSTER-NAME]`         |delete a cluster                                                                                    |
|`exit`                                                    |log out of the interactive shell                                                                    |

##### gcloud auth login - authorize gcloud to access the Cloud Platform with Google user credentials
#### `gcloud auth login [ACCOUNT]`

`gcloud config set account [ACCOUNT]`

`gcloud config set project [PROJECT]`

#### gcloud
##### gcloud is the command-line tool for Google Cloud Platform. It comes pre-installed on Cloud Shell

#### create and switch into a folder named test
##### `mkdir test && cd test`

#### view the running container
##### `kubectl get pods`

#### cto delete a cluster
##### `kubectl expose deployment [CONTAINER-NAME] --port 80 --type LoadBalancer`

#### List services
##### `kubectl get services`

#### list all pods running in the default namespace
##### `kubectl get pods`

#### get more information about the monolith pod
##### `kubectl describe pods [POD-NAME]`

#### view the logs from a Pod
##### `kubectl logs [POD-NAME]`

#### get a stream of Pod logs happening in real-time
##### `kubectl logs -f [POD-NAME]`

#### run an interactive shell inside a Pod. This can come in handy when you want to troubleshoot from within a container.
##### `kubectl exec [POD-NAME] --stdin --tty -c [POD-NAME] /bin/sh`

#### list of endpoints on the monolith service
##### `kubectl describe services [SERVICE-NAME] | grep Endpoints`

#### Download and install the helm binary
##### `wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz`

#### Create a kubernetes cluster
gcloud container clusters create [CLUSTER-NAME] \
--num-nodes 2 \
--machine-type n1-standard-2 
