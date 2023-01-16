resource "aws_key_pair" "deployer" {
  key_name   = "deployer"
  public_key = var.key_value
}
resource "aws_instance" "bastion" {
    ami = var.ami
    instance_type = var.instance_type
    # VPC
    subnet_id = var.subnet_id
    # Security Group
    vpc_security_group_ids = var.security_group_id
    # the Public SSH key
    key_name = aws_key_pair.deployer.id
   tags = {
     Name = "bastion"
}
}
