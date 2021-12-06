# GCP CLI Commands

#### gcloud

command-line tool for Google Cloud Platform. It comes pre-installed on Cloud Shell.

|                  Command                             |                     Description                                          |
|------------------------------------------------------|--------------------------------------------------------------------------|
|`gcloud auth login [ACCOUNT]`                         |authorize gcloud to access the Cloud Platform with Google user credentials|
|`gcloud components update`                            |update all the installed Google Cloud SDK components.                     |
|`gcloud info --format="value(installation.sdk_root)"` |Find out where Google Cloud SDK is installed                              |
|`gcloud auth list`                                    |list the active account name                                              |
|`exit`                                                |log out of the interactive shell                                          |

#### Config

|                  Command                    |               Description   |
|---------------------------------------------|-----------------------------|
|`gcloud config set account [ACCOUNT]`        |set account                  |
|`gcloud config set project [PROJECT]`        |set project                  |
|`gcloud config list project`                 |list the project ID          |
|`gcloud config set compute/zone [ZONE-NAME]` |set your default compute zone|

#### Kubernetes Engine

|                  Command                                                                   |                     Description                                                                    |
|--------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
|`gcloud container clusters create [CLUSTER-NAME]`                                           |Create a Kubernetes Engine cluster (Kubernetes Engine will provision a few Virtual Machines)        |
|`gcloud container clusters create [CLUSTER-NAME] --num-nodes 2 --machine-type n1-standard-2`|Create a kubernetes cluster with parameters (number of nodes, machine type).                        |
|`gcloud container clusters get-credentials [CLUSTER-NAME]`                                  |to interact with the cluster.After creating your cluster, you need to get authentication credentials|
|`gcloud container clusters delete [CLUSTER-NAME]`                                           |delete a cluster                                                                                    |

#### Download and install the helm binary
##### `wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz`

