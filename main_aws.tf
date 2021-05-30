provider "aws" {
  region     = var.region_east
}

resource "aws_instance" "ubuntu" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  #subnet_id              = aws_subnet.east.id
  vpc_security_group_ids = [aws_security_group.public_webservers.id]
 }




resource "local_file" "ansible_ivent" {

  content = templatefile("inv.tmpl",
    {
      instance_ip = aws_instance.ubuntu.public_ip
    }

  )

  filename   = "inventory"
}


#output "ubuntu" {
# value=aws_instance.ubuntu.associate_public_ip_address
#}
output "wordpress" {
  value = aws_instance.ubuntu.public_dns
  #value = aws_instance.ubuntu.public_ip
  
}

variable "region_east" {}
variable "region_west" {}
variable "key_name" {}
variable "instance_type" {}
variable "ami" {}