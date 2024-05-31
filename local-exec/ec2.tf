resource "aws_instance" "TF_Second_EC2" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"

  tags = {
    Name = "local-exec"
  }
}

