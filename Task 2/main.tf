terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "fusang" {
    ami           = "ami-0fc5d935ebf8bc3bc"
    instance_type = var.instance_type
    key_name = "jenkins-server"
    subnet_id = aws_subnet.myapp-subnet-1.id
    vpc_security_group_ids = [aws_default_security_group.default-sg.id]
    availability_zone = var.avail_zone
    associate_public_ip_address = true
    user_data = file("docker-setup-script.sh")

}

