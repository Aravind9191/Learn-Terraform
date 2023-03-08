resource "aws_spot_instance_request" "node1" {
  ami           = "ami-09a94b38daf9069c5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sgr-083fcfc7839001cbd"]
  wait_for_fulfillment =  true

  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_spot_instance_request" "node2" {
  ami           = "ami-09a94b38daf9069c5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sgr-083fcfc7839001cbd"]

  tags = {
    Name = "prom-test-server"
  }
}
