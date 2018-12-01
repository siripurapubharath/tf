
# Terraform Project:

1)	Create two EC2 Instances in AWS Cloud using Terraform

2) Installing Software packages using configuration management tool Ansible

3) Create a Docker Container using Docker Compose file for Web Server and Deploying the Application on the First Machine

4) Create a Docker Container using Docker Compose file for CouchDB Database on the second Machine


  Clone the Project using the following command

      $ git clone https://github.com/venkat09docs/terraform.git

Prerequisites:

    1 - Customize the Secret and Access Keys in the following files
      
        $ vi terraform/ec-instance/variables.tf
        
        $ vi terraform/ansible/setAwsEnv.sh
    
    2 - Run the following script to set up the Environment variables
    
        $ ./terraform/ansible/setAwsEnv.sh

Step1: Create two EC2 Instances in AWS Cloud using Terraform

      $ cd terraform/ec2-instance
  
      $ terraform init
  
      $ terraform apply
  

Step2: Installing Software packages using configuration management tool Ansible

      $ cd ../../terraform/ansible
  
      $ ansible-playbook -i ec2.py provisioning/site.yml -e 'ansible_python_interpreter=/usr/bin/python3'
  
Step3: Create a Docker Container using Docker Compose file for Web Server and Deploying the Application on the First Machine

      $ ansible-playbook -i ec2.py deploy/app.yml -e 'ansible_python_interpreter=/usr/bin/python3'
  
  
    Test the URL: http://first_instance_ip:80

Step4: Create a Docker Container using Docker Compose file for CouchDB Database on the second Machine

      $ ansible-playbook -i ec2.py couchdb/couchdb.yml -e 'ansible_python_interpreter=/usr/bin/python3'
  
  
    Test the URL: http://first_instance_ip:5984
