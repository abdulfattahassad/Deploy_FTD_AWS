resource "aws_ec2_transit_gateway" "Transit_gateway" {
  
  
}

resource "aws_ec2_transit_gateway_vpc_attachment" "Transit_Gateway_Attachement_spoke_vpc" {
  subnet_ids         =  ["${aws_subnet.application_spoke_subnet.id}"]
  transit_gateway_id = aws_ec2_transit_gateway.Transit_gateway.id
  vpc_id             = aws_vpc.spoke_01.id

depends_on = [ aws_ec2_transit_gateway.Transit_gateway ]
}


resource "aws_ec2_transit_gateway_vpc_attachment" "Transit_Gateway_Attachement_security_vpc" {
  subnet_ids         =  ["${aws_subnet.Private_Subnet_Security_VPC.id}" ]
  transit_gateway_id = aws_ec2_transit_gateway.Transit_gateway.id
  vpc_id             = aws_vpc.Security_VPC.id

depends_on = [ aws_ec2_transit_gateway.Transit_gateway ]
}