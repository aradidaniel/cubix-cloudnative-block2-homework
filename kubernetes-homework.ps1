#deployment
kubectl apply -f backapp.yaml
kubectl apply -f frontapp.yaml
kubectl apply -f frontapp-ingress.yaml

#check logs for backapp
kubectl logs backapp-deployment-b6c946688-6ggnv

#list all resources related to frontapp
kubectl get all -l homework=frontapp

#delete all resources for both applications
kubectl delete all -l training=block3