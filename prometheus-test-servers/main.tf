resource "aws_spot_instance_request" "node1" {
  ami           = "ami-0f5628e5fe90f4a45"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-07b32ef1433b68d03"]
  wait_for_fulfillment = true

  tags = {
    Name = "prom-test-server"
  }
}


resource "aws_spot_instance_request" "node2" {
  ami           = "ami-0f5628e5fe90f4a45"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-07b32ef1433b68d03"]

  tags = {
    Name = "prom-test-node"
  }
}







