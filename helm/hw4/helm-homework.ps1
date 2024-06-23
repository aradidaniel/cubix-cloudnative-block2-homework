#Dev: 
kubectl create namespace hw4-dev
helm install hw4-dev . -n hw4-dev

#Test: 
kubectl create namespace hw4-test
helm install hw4-test . --values values.yaml --values ../values-test.yaml -n hw4-test





#Prod: 
kubectl create namespace hw4-prod
helm install hw4-prod . --values values.yaml --values ../values-prod.yaml -n hw4-prod