variable "vpc_cidr" {
  description = "choos cidr"
  type = string
  default = "10.10.0.0/16"
}
variable "region" {
 description = "choose the region for your stack"
 type = string
 default = "ap-souh-1"
}

variable "nat_amis" {
  type = map
  default = {
    us-east-1 = "ami-0557a15b87f6559cf"
    #us-east-2 = "ami-0557a15b87f6559cf"
  }
}