variable "aws_region" { default = "us-west-2" description = "Aws IAM role token using SAML" }
variable "subnet_id" {  default = "subnet-3ff16b76" }
variable "security_groups" {  default = ["sg-6501c01f"] }
variable "instance_type" { description = "AWS Instance Type" default = "t2.micro" }
variable "ami_id" { description = "AMI ID for the EC2 Launch" default = "ami-e535c59d" }
variable "key_name"{description = "key name" default = "sathiya-test"}
