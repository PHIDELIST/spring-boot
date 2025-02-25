resource "aws_lb" "app_lb" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = var.security_groups
  subnets            = var.subnets

  tags = {
    Name = var.alb_name
  }
}

resource "aws_lb_target_group" "app_target_group" {
  name        = "${var.alb_name}-tg"
  port        = var.target_group_port
  protocol    = var.target_group_protocol
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    interval            = 30
    path                = var.health_check_path
    protocol            = var.target_group_protocol
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }

  tags = {
    Name = "${var.alb_name}-tg"
  }
}

resource "aws_lb_listener" "app_listener" {
  load_balancer_arn = aws_lb.app_lb.arn
  port              = var.listener_port
  protocol          = var.listener_protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app_target_group.arn
  }
}
