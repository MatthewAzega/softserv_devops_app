resource "aws_ecs_cluster" "development" {
  lifecycle {
    create_before_destroy = true
  }

  name = "development"

  tags = {
    Env  = "development"
    Name = "development"
  }
}