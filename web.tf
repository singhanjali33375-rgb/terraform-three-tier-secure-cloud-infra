resource "aws_instance" "web" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  security_groups = [aws_security_group.web_sg.id]

  tags = {
    Name = "Web-Server"
  }
}
