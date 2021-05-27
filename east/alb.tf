resource "aws_lb" "default" {
  name               = var.app
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.default.id]
  subnets            = [data.aws_subnet.default.id]
  enable_deletion_protection = false

  access_logs {
    bucket  = "surrendra-terraform2"
    prefix  = "alb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}
