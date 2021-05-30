resource "null_resource" "runansible" {

  provisioner "local-exec" {
    command = "/bin/ansible-playbook -i 'inventory' --private-key './l1.pem' ./Ansible/wordpress.yml"

  }
  depends_on = [aws_instance.ubuntu]
}