provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "dk97502400"
    key    = "terraform15.tfstate"
    region = "ap-northeast-1"
    dynamodb_table = "terraform.tf"
  }
}

#output "vpc_cidr" {
#    value = "${aws_vpc.my_vpc.cidr_block}"
#  }
#output "vpc_id" {
#    value = "${aws_vpc.my_vpc.id}"
#  }


