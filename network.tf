/*resource "aws_vpc" "epam" {
  cidr_block = "10.1.0.0/16"
}

resource "aws_subnet" "east" {
  vpc_id     = aws_vpc.epam.id
  cidr_block = "10.1.1.0/24"
}
resource "aws_subnet" "west" {
  vpc_id     = aws_vpc.epam.id
  cidr_block = "10.1.16.0/24"
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.epam.id

}

resource "aws_default_route_table" "example" {
  default_route_table_id = aws_vpc.epam.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}*/