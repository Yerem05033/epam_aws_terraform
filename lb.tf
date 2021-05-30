/*resource "aws_lb" "loBalancer" {
  name               = "loBalancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb.id]
  subnets            = [aws_subnet.east.id, aws_subnet.west.id]
}

*/