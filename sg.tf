resource "aws_security_group" "terraform-ec2-sg" {
  name        = "terraform-ec2-sg"
  description = "Allow all traffic"
  vpc_id      = aws_vpc.tejaswi-vpc.id

  ingress {
    description = "ssh-traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "terraform-ec2-sg"
  }
}
