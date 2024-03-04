# environment variables
region       = 
project_name = 
environment  = 

# vpc variables
vpc_cidr                     = "10.0.0.0/16"
public_subnet_az1_cidr       = "10.0.0.0/24"
public_subnet_az2_cidr       = "10.0.1.0/24"
private_app_subnet_az1_cidr  = "10.0.2.0/24"
private_app_subnet_az2_cidr  = "10.0.3.0/24"
private_data_subnet_az1_cidr = "10.0.4.0/24"
private_data_subnet_az2_cidr = "10.0.5.0/24"

# secrets manager variables
secrets_manager_secret_name = 

# rds variables
multi_az_deployment          = 
database_instance_identifier = 
database_instance_class      = 
publicly_accessible          = 

# acm variables
domain_name       = 
alternative_names = 

# s3 variables
env_file_bucket_name = 
env_file_name        = 

# ecs variables
architecture = "X86_64"
image_name   = 
image_tag    = 

# route-53 variables
record_name = 
