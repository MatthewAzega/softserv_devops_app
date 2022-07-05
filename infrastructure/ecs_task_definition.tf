resource "aws_ecs_task_definition" "default" {
  container_definitions    = jsonencode([
    {
    cpu = 256,
    image = "softserv_app",
    name = "app",
    memory = 50
    portMappings = [
      { containerPort = 8080
        protocol = "tcp" }
    ]
    }
  ])
  family                   = "development"
  #memory                   = 1500
  network_mode             = "host"
  requires_compatibilities = ["EC2"]
}