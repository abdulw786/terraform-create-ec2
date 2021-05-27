resource "aws_lb" "default" {
  name               = var.app
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.default.id]
  subnet_ids.        = [tolist(data.aws_subnet_ids.default.ids)[0], tolist(data.aws_subnet_ids.default.ids)[1]]
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
