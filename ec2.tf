resource "aws_instance" "ec2" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  region = "us-east-2"
  subnet_id   = "subnet-0017b80df448722c1"
  key_name = "jenkins"
  security_groups = ["sg-0862e0d8235267a61"]
  tags = {
    Name = "ec2terraform"
  }
}
