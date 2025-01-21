resource "aws_internet_gateway" "fiap_x_igw" {
  vpc_id = aws_vpc.fiap_x_vpc.id

  tags = {
    Name = var.aws_igw_name
  }
}
