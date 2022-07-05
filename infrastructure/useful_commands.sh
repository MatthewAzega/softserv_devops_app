aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_URL

docker build -t test_app:v0.1.0 .
docker tag test_app:v0.1.0 $ECR_URL/maticzek:v0.1.0
docker push $ECR_URL/maticzek:v0.1.0

/*"image": "264965813747.dkr.ecr.us-east-1.amazonaws.com/softserv_app:latest",*/