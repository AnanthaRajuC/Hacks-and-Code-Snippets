# gcloud

## gcloud is the command-line tool for Google Cloud Platform. It comes pre-installed on Cloud Shell

# gcloud auth list

## list the active account name

# gcloud config list project

## list the project ID

# create and switch into a folder named test
## mkdir test && cd test

# set your default compute zone to us-central1-a
## gcloud config set compute/zone us-central1-a

# Create a Kubernetes Engine cluster
## gcloud container clusters create [CLUSTER-NAME]

# to interact with the cluster.After creating your cluster, you need to get authentication credentials
## gcloud container clusters get-credentials [CLUSTER-NAME]

#cto delete a cluster
## gcloud container clusters delete [CLUSTER-NAME]
