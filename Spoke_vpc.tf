resource "aws_vpc" "spoke_01" {
  cidr_block = var.spoke_01
  tags = {name = "Spoke01_VPC"}
}

resource "aws_subnet" "application_spoke_subnet" {
 vpc_id  =  aws_vpc.spoke_01.id
 cidr_block = var.spoke_01_application_subnet
 tags = {name = "spoke01_application_subnet"}

}