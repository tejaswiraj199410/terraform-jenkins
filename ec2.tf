resource "aws_instance" "terraform-ec2" {
  ami                         = "ami-0cfde0ea8edd312d4"
  instance_type               = "t2.micro"
  key_name                    = "ohio-key"
  vpc_security_group_ids      = [aws_security_group.terraform-ec2-sg.id]
  subnet_id                   = aws_subnet.terraform-subnet.id
  associate_public_ip_address = true
  tags = {
    Name = "terraform-ec2"
  }
}
