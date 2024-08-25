module "ajala-app" {
source                  = "github.com/ooghenekaro/infra-module/infra-app/ajala-app"
application_name = "ecs-app"
family = "app-task"
container_name = "app"
image = "335871625378.dkr.ecr.eu-west-2.amazonaws.com/migrate-app:latest"
memory = "512" # In MiB
cpu = "256" 
role_arn= "arn:aws:iam::335871625378:role/ecsTaskExecutionRole"
deployment_group = "ecs-dg"
service_name = "app-service"

