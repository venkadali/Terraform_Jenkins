variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-0c02fb55956c7d316"  # Amazon Linux 2 AMI (update if needed)
}

variable "instance_type" {
  default = "t2.micro"
}
