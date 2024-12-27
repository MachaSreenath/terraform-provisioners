resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9" #devops-practice
  instance_type = "t2.micro"

  tags = {
    Name = "provisioner"
  }

  provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory" # self = aws_instance.web
  }
}