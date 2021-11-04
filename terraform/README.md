# Terraform
## IaC (Infrastructure as code)
### The infrastructure here is making virtual machins (Vm) that are all are on the same virtual network
### All the vms are connected to a load balancer to try and make every vm dosent get too much treffic and it is balanced so the site wont crash on the user
### For the data base it is using Azure postgresql server that has a firewall that allows connection from only the ip address of the Load Balancer so that way all the vm can talk to the data base but no one else can

###The vms themself have a moudle for creating them and based on the amount of vm that is set in the variables are being crated and added to the Virtual network
