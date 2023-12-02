# main.tf

provider "aws" {
  region = "us-east-2"  # Change this to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI, change to your desired AMI
  instance_type = "t2.micro"
  key_name      = "Devops"  # Change this to your key pair name

  tags = {
    Name = "example-instance"
  }
}
