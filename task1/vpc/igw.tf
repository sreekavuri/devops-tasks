resource "aws_internet_gateway" "gw" {
        vpc_id = aws_vpc.vpcsumanth.id

        tags   = {
        Name   = "Internet Gateway_sumanth"
        }
  
}



