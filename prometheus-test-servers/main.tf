resource "aws_spot_instance_request" "node1" {
  ami           = "ami-09a94b38daf9069c5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sgr-sg-0c16a696a33e648c4"]
  wait_for_fulfillment =  true

  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_spot_instance_request" "node2" {
  ami           = "ami-09a94b38daf9069c5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c16a696a33e648c4"]

  tags = {
    Name = "prom-test-server"
  }
}
