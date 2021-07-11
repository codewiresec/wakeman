# Resource Block
# Resource-1: Create VPC
# Resource Block to Create VPC ins us-west-1

resource "aws_vpc" "vpc-us-west-1" {
  cidr_block = "10.1.0.0/16"
  provider = aws.aws-west-1
  tags = {
      "Name" = "vpc-us-west-1"
  }
}