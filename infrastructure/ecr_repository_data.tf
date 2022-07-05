data "aws_ecr_repository" "default" {
    name = "softserv_app"
    depends_on = [
      aws_ecr_repository.default
    ]
}