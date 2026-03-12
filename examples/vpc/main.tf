module "my_vpc" {
  source = "../../modules/vpc"

  cidr_block = "192.168.0.0/16"

  subnet_cidr_block = ["192.168.1.0/24", "192.168.2.0/24"]

  tags = {
    "Name" = "sagar-test"
  }
}

