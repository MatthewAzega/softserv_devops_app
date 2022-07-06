terraform {
  backend "s3" {
    bucket = "weatherapptf"
    key    = "terraform-state/weather_app"
  }
}