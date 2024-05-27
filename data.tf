data "aws_availability_zones" "azs" {
 # name = "eu-central-1a"
 state = "available"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "default" {
  vpc_id = data.aws_vpc.default.id
#   filter {
#     name = "association.main"
#     value = ["true"]
#   }
}