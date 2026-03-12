resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block

  tags = {
    "Name" = "sagar-test"
  }
}


resource "aws_subnet" "subnet" {
    for_each = length(var.subnet_cidr_block )> 0 ? toset(var.subnet_cidr_block) : []
    vpc_id     = aws_vpc.vpc.id
    cidr_block = each.value

    tags = var.tags

}