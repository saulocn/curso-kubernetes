kubectl create deployment nginx-deploy --image=nginx
kubectl scale --replicas=3 deployment/nginx-deploy