resource "aws_alb_target_group" "default" {
  name = "petclinic-targetgroup"
  port = 80
  protocol = "HTTP"

  lifecycle   

  health_check {
    path = "/"
    port = 80
    healthy_threshold = 6
    unhealthy_threshold = 2
    timeout = 2
    interval = 5
    matcher = "200"  # has to be HTTP 200 or fails
  }
}
