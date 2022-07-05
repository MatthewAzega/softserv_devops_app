resource "aws_ecs_service" "default" {
  cluster = aws_ecs_cluster.development.id
  depends_on = [
    aws_iam_role_policy_attachment.ecs
  ]
  desired_count           = 2
  enable_ecs_managed_tags = true
  force_new_deployment    = true

  load_balancer {
    target_group_arn = aws_alb_target_group.alb_ecs_target-g.arn
    container_name   = "app"
    container_port   = 8080
  }

  name            = "test_app"
  task_definition = "${aws_ecs_task_definition.default.family}:${data.aws_ecs_task_definition.default.revision}"
}
