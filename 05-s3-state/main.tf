terraform {
  backend "s3" {
    bucket = "terraformb71-sai"
    key    = "o5-s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}


resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07b32ef1433b68d03"]
  tags = {
    Name = "test"
  }
}

