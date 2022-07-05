resource "aws_lb" "alb_ecs" {
  name               = "dev-alb-ecs"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.public-allow_web.id]
  subnets            = [aws_subnet.public-subnet.id, aws_subnet.public-subnet2.id]

  enable_deletion_protection = true

  tags = {
    "createdBy" = "mgemza"
    Environment = "development"
  }
}

resource "aws_alb_target_group" "alb_ecs_target-g" {
  vpc_id = aws_vpc.dev-vpc.id
  health_check {
    path = "/"
  }
  name     = "alb-target-group"
  port     = 80
  protocol = "HTTP"

  stickiness {
    type = "lb_cookie"
  }
}

resource "aws_security_group" "public-allow_web" {
  name        = "allow web traffic"
  description = "allow web inbound traffic"
  vpc_id      = aws_vpc.dev-vpc.id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTPS"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
  tags = {
    "name"      = "allow_web"
    Environment = "development"
  }
}