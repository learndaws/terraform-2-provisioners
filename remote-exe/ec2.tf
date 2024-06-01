resource "aws_instance" "TF_Second_EC2" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"

  tags = {
    Name = "remote-exec"
  }

  connection {
    type     = "ssh"
    user     = "root"
    password = "DevOps321"
    host     = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "echo 'this is from remote exec' > /tmp/remote.txt",
      "sudo yum install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}

