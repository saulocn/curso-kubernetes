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

O comando onipresente para descobrir algo no seu cluster é o kubectl get <nome-do-recurso>

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

##detalhes sobre todos os pods
`kubectl describe pods`

##detalhes de um pod especifico
`kubectl describe pod <nome-do-pod>`

Por fim, podemos ver os logs de um Pod com o comando:

`kubectl logs <nome-pod-name>`
