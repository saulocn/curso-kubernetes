kubectl expose deployment \
  nginx-deploy \
  --name=nginx-service \
  --type=LoadBalancer \
  --port=8080 \
  --target-port=80