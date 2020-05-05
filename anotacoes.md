## Minikube

Para iniciar o Minikube:

`minikube start`

Para iniciar o Minikube com uma versão especifica do Kubernetes:

`minikube start --kubernetes-version="v1.16"`

Para acessar o dashboard do Kubernetes em execução:

`minikube dashboard`

Para ver o status do Minikube:

`minikube status`

Para parar o cluster:

`minikube stop`

Para se conectar pelo SSH com o nó master do cluster:

`minikube ssh`

E para remover o cluster:

`minikube delete`

E para remover todos os clusters e perfis:

`minikube delete --all`

## Kubectl

O comando onipresente para descobrir algo no seu cluster é o `kubectl get <nome-do-recurso>`

Um recurso é um pod, deployment, node entre vários outros que veremos ainda.

Por exemplo, você pode listar os nodes do seu cluster usando:

`kubectl get nodes`

Como você está usando Minikube deve aparecer apenas um Master node.

Caso queira entender melhor aquele recurso, use o comando explain:

`kubectl explain node`

Isso também funciona para outros recursos como pod (e outros recursos com deployment ou service):

`kubectl explain pod`

Informações sobre os pods, service, deployments etc recebemos pelo comando kubectl get ..., por exemplo:

`kubectl get pods`

`kubectl get deployments`

`kubectl get services`

e

`kubectl get pod <nome-do-pod>`

`kubectl get deployment <nome-do-deployment>`

`kubectl get service <nome-do-service>`

Usando o flag '-o wide' recebemos mais infos:

`kubectl get pods -o wide`

Informações mais detalhadas conseguimos pelo comando describe:

detalhes sobre todos os pods

`kubectl describe pods`

detalhes de um pod especifico

`kubectl describe pod <nome-do-pod>`

Por fim, podemos ver os logs de um Pod com o comando:

`kubectl logs <nome-pod-name>`


para listar os pods
`kubectl get pods`

tbm funcionar para deployments e services, por exemplo:
`kubectl get services`

para detalhes de um pod
`kubectl describe pod <nome-pod>`

o comando describe tbm funciona para deployment e service, por exemplo:
`kubectl describe service <nome>`

para criar pod, deployment ou service a partir de um arquivo yml
`kubectl create -f <nome-arquivo-yml>`

para remover pod, deployment ou service a partir de um arquivo yml
`kubectl delete -f <nome-arquivo-yml>`

para remover um pod
`kubectl delete pod <nome-pod>`

para remover um deployment
`kubectl delete deployment <nome-deployment>`

para remover um service
`kubectl delete service <nome-service>`

Para criar um autoscaling baseado em CPU
`kubectl autoscale deployment  aplicacao-noticia-deployment --cpu-percent=20 --min=1 --max=10`

Para remover o autoscaling
`kubectl delete hpa aplicacao-noticia-deployment`

Para verificar se a métrica está habilitada
`kubectl get apiservice v1beta1.metrics.k8s.io`
