output "my-vpc-id" {
    value = aws_vpc.vpc.id
}
output "my-subnet-id" {
    value = aws_subnet.subnet1.id
}