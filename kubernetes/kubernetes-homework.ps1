#deployment
kubectl apply -f backapp-deployment.yaml
kubectl apply -f backapp-service.yaml

kubectl apply -f frontapp-deployment.yaml
kubectl apply -f frontapp-service.yaml

kubectl apply -f frontapp-ingress.yaml

#check logs for backapp
kubectl logs -l homework=backapp

#list all resources related to frontapp
kubectl get all -l homework=frontapp

#delete all resources for both applications
kubectl delete all -l training=block3