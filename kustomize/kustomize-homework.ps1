#Dev: 
kubectl apply -k kustomize/overlays/dev
#Test: 
kubectl apply -k kustomize/overlays/test
#Prod: 
kubectl apply -k kustomize/overlays/prod