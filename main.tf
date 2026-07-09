provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "first_instance" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t2.micro"
  key_name      = "julykey-2026"

  tags = {
    Name = "test-instance"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-demo-bucket-2026-12345"

  tags = {
    Name        = "my-terraform-demo-bucket"
    Environment = "Dev"
  }
}

