output "vpc_id" {
 value = aws_vpc.main.id

}
output "private_subnet" {
   value = aws_subnet.private_1.id
}
output "public_subnet" {
   value = aws_subnet.public_1.id
}
output "aws_security_group" {
  value = aws_security_group.ssh-allowed.id
}
