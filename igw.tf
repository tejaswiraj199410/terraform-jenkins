resource "aws_internet_gateway" "terraform-igw" {
  vpc_id = aws_vpc.tejaswi-vpc.id
  tags = {
    Name = "terraform-igw"
  }
}
