resource "aws_vpc" "tejaswi-vpc" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "citibank-vpc"
  }
}
