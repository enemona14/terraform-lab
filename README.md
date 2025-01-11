# terraform-lab

DEMOSTRATING PROFICIENCY IN TERRAFORM BY CREATING RESOURCES ON GCP. The aim of the model is to provide basic managing and deploying resources within the google Cloud enviroment.

VPC NETWORK: create VPC network
Name "my-vpc"

SUBNET:created 3 subnets within the VPC network namely
1: my-subnet 
region: us-central1
2:my-subnet-2
region: europe-west1
3: my-subnet-3
region:asia-southeast1 with IP Range 10.1.0.0/24 respectively

FIREWALL RULE:
Allow-http: The incoming HTTPS trafic on port 80 with protocol TCP to all the resources within the VPC network.

Allow-http: Allows incoming HTTPS trafic on port 443 to all resources within the VPC network.
"0.0.0.0/0"  Allow traffic from all IPs respectively.

Creating Virtual Machine: 
test-vm: created a virtual machine instance with name my-vm in the us-central1-a zone running on Ubuntu 2004-lts image with my-subnet subnetwork

.test-vm2: created a virtual machine instance with name my-vm-europe in the europe-west1 zone running on Ubuntu 2004-lts image with my-subnet-2 subnetwork

test-vm3: created a virtual machine instance with name my-vm-asia in the asia-southeast zone running on Debian 11 image with my-subnet-3 subnetwork.

Cloud SQl Instance: created MySQL 8.0 database instance in the us-central1 region with name mysql-db.

instances2: created MySQL 8.0 database instance in the europe-west1 region with name mysql-db-europe.

Intsance3: created PostgresSQL 15 database instance in the asia-southest1 region with name postgres-db.'

Cloud storage buckets: created a cloud storage bucket in the US region with name nexedge-bucket-mona123456.

gcp-bucket-asia: created a cloud storage bucket in the ASIA region nexedge-bucket-mona123456-asia

gcp-bucket-europe: created a cloud storage bucket in the EUROPE region with name nexedge-bucket-mona123456-europe and storage Standard class for each of them respectively.







