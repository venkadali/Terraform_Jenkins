variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-0af9569868786b23a"  # Amazon Linux 2 AMI (update if needed)
}

variable "instance_type" {
  default = "t2.micro"
}
