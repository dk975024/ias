
resource "aws_vpc" "my_app" {
  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "default"
  tags = {
    Name = "javahomeVpc"
    Environment = "${terraform.workspace}"
  }
}

resource "aws_subnet" "main" {
  count = 0
  vpc_id = "${aws_vpc.my_app.id}"
  cidr_block = "${cidrsubnet(var.vpc_cidr,8,count.index)}"
  tags = {
    "Name" = "Subnet-${count.index + 0}"
  }
}

