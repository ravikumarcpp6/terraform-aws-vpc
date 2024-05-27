output "azs" {
    value = data.aws_availability_zones.azs.names
}

output " " {
    value = aws_vpc.main.id
}