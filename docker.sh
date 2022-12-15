eval $(minikube docker-env)
docker build -t customer-service:2 -f services/customers/Dockerfile.main services/customers
docker build -t customer-migrations:2 -f services/customers/Dockerfile.migrations services/customers
docker build -t client:1 -f client/Dockerfile client