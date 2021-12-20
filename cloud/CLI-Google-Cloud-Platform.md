# GCP CLI Commands

#### gcloud

command-line tool for Google Cloud Platform. It comes pre-installed on Cloud Shell.

|                  Command                             |                     Description                                          |
|------------------------------------------------------|--------------------------------------------------------------------------|
|`gcloud auth list`                                    |list the active account name                                              |
|`gcloud auth login [ACCOUNT]`                         |authorize gcloud to access the Cloud Platform with Google user credentials|
|`gcloud components update`                            |update all the installed Google Cloud SDK components.                     |
|`gcloud info --format="value(installation.sdk_root)"` |Find out where Google Cloud SDK is installed                              |
|`exit`                                                |log out of the interactive shell                                          |

#### Config

|                  Command                     |               Description                                                                                |
|----------------------------------------------|----------------------------------------------------------------------------------------------------------|
|`gcloud config set account [ACCOUNT]`         |set account                                                                                               |
|`gcloud config set project [PROJECT]`         |set project                                                                                               |
|`gcloud config set compute/zone [ZONE-NAME]`  |set your default compute zone                                                                             |
|`gcloud config list project`                  |list the project ID                                                                                       |

#### Compute

|                  Command                     |               Description                                                                                |
|----------------------------------------------|----------------------------------------------------------------------------------------------------------|
|`gcloud compute zones list \| grep $MY_REGION`|list all the zones in a given region. Set Environment Variable to your region. Ex: `MY_REGION=us-central1`|
|`gcloud compute instances list`               |List the virtual machine instances in your project.                                                       |
|`gcloud compute instances create second-vm --machine-type "e2-standard-2" --image-project "debian-cloud" --image-family "debian-9" --subnet "default" --zone "us-central1-c"`|Create a VM|
|`gcloud iam service-accounts create test-service-account2 --display-name "test-service-account2"`|create a new service account|

#### Kubernetes Engine

|                  Command                                                                   |                     Description                                                                    |
|--------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
|`gcloud container clusters create [CLUSTER-NAME]`                                           |Create a Kubernetes Engine cluster (Kubernetes Engine will provision a few Virtual Machines)        |
|`gcloud container clusters create [CLUSTER-NAME] --num-nodes 2 --machine-type n1-standard-2`|Create a kubernetes cluster with parameters (number of nodes, machine type).                        |
|`gcloud container clusters get-credentials [CLUSTER-NAME] --zone [ZONE_NAME]`               |to interact with the cluster.After creating your cluster, you need to get authentication credentials|
|`gcloud container clusters delete [CLUSTER-NAME]`                                           |delete a cluster                                                                                    |

#### gsutil

|                  Command                                           |               Description                                                                                             |
|--------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
|`gsutil mb gs://$MY_BUCKET_NAME_1`                                  |create a bucket. Set Environment Variable to your bucket name. Ex: `MY_BUCKET_NAME_1=abcd`                             |
|`gsutil cp gs://[BUCKET-NAME]/path/to/file.extension file.extension`|Copy a file from one Cloud Storage bucket to your Cloud Shell. Ex: `gsutil cp gs://cloud-training/ak8s/cat.jpg cat.jpg`|

#### Download and install the helm binary
##### `wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz`

