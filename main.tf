provider "aws" {
  region = "ap-south-1"
}


data "aws_secretsmanager_secret_version" "ec2_secret" {
  secret_id = "prod"
}

locals {
  secret_data = jsondecode(data.aws_secretsmanager_secret_version.ec2_secret.secret_string)
}

resource "aws_instance" "example" {
  ami           = "ami-0861f4e788f5069dd"  # Replace with valid AMI
  instance_type = "t3.micro"
  key_name      = "august-2025"

}

output "key_used" {
  value = "august-2025"
}

output "secret_debug" {
  value     = local.secret_data
  sensitive = true
}
