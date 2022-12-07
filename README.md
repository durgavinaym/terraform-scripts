# Terraform
#What is Terraform
 HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version,   reuse, and share.

#How does terraform works?
 Terraform creates and manages resources on cloud platforms and other services through their application programming interfaces (APIs). Providers enable Terraform to   work with virtually any platform or service with an accessible API.

 ![image](https://user-images.githubusercontent.com/90096333/179201143-4cbcc9b7-0a2d-4371-8a02-b06a2aad71fc.png)

  Terraform creates and manages cloud platforms and services through their APIs
  Terraform workflow consists of three stages:
  ![image](https://user-images.githubusercontent.com/90096333/179211668-773c72e5-f046-4a02-a80f-48a2e02e3813.png)

 #Installation of Terraform on windows
 check the below link for the installtion of terraform
 https://spacelift.io/blog/how-to-install-terraform
 https://youtu.be/Cn6xYf0QJME ;
 https://youtu.be/cCaTsD8pRrY 
 
  #Main Commands of terraform 
   | init      |    Prepare your working directory for other commands|
   | :---:     | :---:    |
   | validate    |  Check whether the configuration is valid |
   |plan      |    Show changes required by the current configuration|
   | apply       |  Create or update infrastructure|
   | destroy     |  Destroy previously-created infrastructure|
 
 In the about scripts iam using Aws cloud provider
 firstly create an Iam user in aws >> give the user the * Programmatic access *Console Access >> attach the administator Access 
 Then Download the Excel file contains the Username , Password,Access Key,Secret Key and console link 
 
 Create a Vpc and subnet.
 Create a application installations.
 Create a sample Lambda function.
 Create a Elastic kubernetes cluster.
 
 |Create of  Jenkin application |
  | :---:     |
  
  | file1 | file2 | file3 |
  | :---:  | :---: | :---: |
  |main.tf | var.tf| jenkins-install.sh  | 
  
   | Resources  | Type     |
   | :---:      | :---:    |
   |  aws_vpc  | resource |
   | aws_subnet | resource |
   | aws_internet_gateway | resource | 
   | aws_route_table | resource |
   | aws_route | resource |
   | aws_route_table_association | resource |
   |aws_instance | resource |
   |jenkins_endpoint |    |
   
   |Create of  Sonarqube application |
  | :---:     |
  
  | file1 | file2 | file3 |
  | :---:  | :---: | :---: |
  |main.tf | var.tf| sonar-install.sh  | 
  
   | Resources  | Type     |
   | :---:      | :---:    |
   |  aws_vpc  | resource |
   | aws_subnet | resource |
   | aws_internet_gateway | resource | 
   | aws_route_table | resource |
   | aws_route | resource |
   | aws_route_table_association | resource |
   |aws_instance | resource |
   |sonar_endpoint |    |
   
   |Create of  grafana application |
  | :---:     |
  
  | file1 | file2 | file3 |
  | :---:  | :---: | :---: |
  |main.tf | var.tf| grafana-install.sh  | 
  
   | Resources  | Type     |
   | :---:      | :---:    |
   |  aws_vpc  | resource |
   | aws_subnet | resource |
   | aws_internet_gateway | resource | 
   | aws_route_table | resource |
   | aws_route | resource |
   | aws_route_table_association | resource |
   |aws_instance | resource |
   |grafana_endpoint |    |
   
   |Create of  sample awslambda function |
  | :---:     |
  
  | file1 | file2 | 
  | :---:  | :---: |
  |main.tf | python|  
  
   | Resources  | Type     |
   | :---:      | :---:    |
   |  aws_iam_role | resource |
   |aws_iam_policy | resource |
   | aws_iam_role_policy_attachment | resource | 
   | aws_lambda_function | resource |
   | terraform_aws_role_output | output  |
   | terraform_aws_role_arn_output | output  |
   |terraform_logging_arn_output | output |
   
    |Create of  EKS cluster |
    | :---:     | :---: |
  
  | file1 | file2 | 
  | :---:  | :---: |
  |main.tf | var.tf|  
  
   | Resources  | Type     |
   | :---:      | :---:    |
   |  aws_iam_role | resource |
   |aws_iam_role_policy_attachment- container registry | resource |
   | aws_iam_role_policy_attachment -eks | resource | 
   | aws_eks_cluster | resource |
   |  aws_iam_role - node | resource |
   |aws_iam_role_policy_attachment- node container registry | resource |
   | aws_iam_role_policy_attachment - EKS_CNI_Policy | resource | 
   | aws_iam_role_policy_attachment - node ECR | resource | 
   | aws_iam_role_policy_attachment - node eks | resource | 
   | aws_eks_node_group | resource |
   
   
    By using terraform commands create the infra of the applications
   * Intilize the terraform for the creation of the infra  -- terraform init
             
   * After intilization plan the structure of terraform script  -- terraform plan
               
   *  After plan apply the terraform script resources on the required service  -- terraform apply
                  
   * After the creation of the resources want to delete  -- terraform destroy
                   
   
   
   
   
 Below are some refference links
 https://adamtheautomator.com/terraform-vpc/
 https://www.ashnik.com/install-jenkins-on-aws-ec2-instance-using-terraform/
 https://medium.com/@haissamhammoudfawaz/create-a-aws-lambda-function-using-terraform-and-python-4e0c2816753a
 https://www.sensedia.com/post/how-create-cluster-kubernetes-terraform-aws-eks
 https://medium.com/@ratulbasak93/aws-elb-and-autoscaling-using-terraform-9999e6266734
 https://adamtheautomator.com/terraform-autoscaling-group/
 https://hands-on.cloud/managing-aws-auto-scaling-using-terraform/


