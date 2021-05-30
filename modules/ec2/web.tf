resource "aws_instance" "ubuntu"{
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [ aws_security_group.my_webserver.id]
    user_data = <<EOF
#!/bin/bash
apt -y update
apt -y install apache2
sudo systemctl start apache2
EOF
}