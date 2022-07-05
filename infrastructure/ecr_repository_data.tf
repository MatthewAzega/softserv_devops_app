data "aws_ecr_repository" "default" {
    name = "softserv_app"
    #image_github = aws_ecr_repository.default.repository_url
    depends_on = [
      aws_ecr_repository.default
    ]
}