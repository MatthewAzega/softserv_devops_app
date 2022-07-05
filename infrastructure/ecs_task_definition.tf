resource "aws_ecs_task_definition" "default" {
  container_definitions    = file("containers_definitions.json")
  family                   = "development"
  memory                   = 1500
  network_mode             = "host"
  requires_compatibilities = ["EC2"]
}