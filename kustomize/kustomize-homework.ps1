#Dev: 
kubectl create namespace hw4-dev
kubectl apply -k kustomize/overlays/dev
#Test: 
kubectl create namespace hw4-test
kubectl apply -k kustomize/overlays/test
#Prod: 
kubectl create namespace hw4-prod
kubectl apply -k kustomize/overlays/prod