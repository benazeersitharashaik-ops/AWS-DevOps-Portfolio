provider "aws" {
  region     = "ap-south-1"
  access_key = "--------------"
  secret_key = "----------------------"
}
resource "aws_instance" "example" {
  ami                    = "ami-0cdfc1e40cc5ca08a"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0437630aa5f729fb4"]
  count                  = 1
  key_name               = "puppy"
  tags = {
    Name = "Terraform Example"
  }
}
resource "aws_security_group" "example" {
  name        = "terraform-example-sg"
  description = "Allow SSH and HTTP inbound traffic"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
