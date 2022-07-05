resource "aws_alb_listener" "default" {
  default_action {
    target_group_arn = aws_alb_target_group.alb_ecs_target-g.arn
    type             = "forward"
  }
  load_balancer_arn = aws_lb.alb_ecs.arn
  port              = 80
  protocol          = "HTTP"

}