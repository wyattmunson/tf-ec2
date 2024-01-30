provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "basic_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    creation-date = "123"
    Environment   = "dev"
    Created-By    = "Harness IaCM automation"
  }
}
