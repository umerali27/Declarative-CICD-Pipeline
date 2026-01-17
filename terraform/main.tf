#key pair
resource "aws_key_pair" "my_key" {
    key_name   = "terra"
    public_key  = file("terra.pub")
}
# vpc 
resource "aws_default_vpc" "default" {

}
resource "aws_security_group" "my_security_group" {
    name        = "my_security_group"
    description = "My security group"
    vpc_id     = aws_default_vpc.default.id
# inbound
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
# outbound
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
# ec2 instance
resource "aws_instance" "my_instance" {
   key_name = aws_key_pair.my_key.key_name
   security_groups = [aws_security_group.my_security_group.name]
   instance_type = var.ec2_instance_type
   ami = var.ec2_ami_id
   #user_data =file(.sh) any file to install can be added here
   root_block_device {
     volume_size = var.ec2_root_storage_size
     volume_type = "gp3"
}
   tags = {
       Name = "DevOps-CICD-EC2"
   }
}
