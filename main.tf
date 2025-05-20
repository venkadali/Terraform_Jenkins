terraform {
  backend "s3" {
    bucket         = "terraform-state-venugopal"
    key            = "env/dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "jenkins-demo-instance"
  }
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-unique-bucket-from-jenkins-demo-001"

  tags = {
    Name        = "DemoBucket"
    Environment = "Dev"
  }
}
