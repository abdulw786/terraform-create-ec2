resource "aws_lb" "default" {
  for_each           = data.aws_subnet_ids.default.ids
  name               = var.app
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.default.id]
  subnets            = [tolist(data.aws_subnet_ids.default.ids)[0], tolist(data.aws_subnet_ids.default.ids)[1]]
  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}
