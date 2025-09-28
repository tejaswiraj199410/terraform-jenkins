resource "aws_subnet" "terraform-subnet" {
  vpc_id     = aws_vpc.tejaswi-vpc.id
  cidr_block = "192.168.1.0/24"
  tags = {
    Name = "terraform-subnet"
  }
}
