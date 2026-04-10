provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "first_instance" {
  ami           = "ami-05d2d839d4f73aafb"
  instance_type = "t2.micro"
  key_name      = "august-2025"

  tags = {
    Name = "test-instance"
  }
}
