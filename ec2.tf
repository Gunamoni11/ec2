provider "aws" {
 profile = "default"
  region = "us-east-2"
}
resource "aws_instance" "ec2" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  subnet_id   = "subnet-0017b80df448722c1"
  key_name = "jenkins"
  security_groups = ["sg-0862e0d8235267a61"]
 user_data = "${file("userdata.sh")}"
  tags = {
    Name = "ec2terraform"
  }
}
