variable "region" {
 description = "default region"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {
  description = "The VPC subne which the instance "
}

variable "ami_id" {
  description = "The AMI to use"
}

variable "vpc_id" {
  description = "The vpc to create ec2 on"
}

variable "iam_instance_profile" {
  description = "roles for ssm and s3 access"
}