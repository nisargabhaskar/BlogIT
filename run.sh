kubectl delete services --all
kubectl delete deployments --all
kubectl delete pods --all
docker image rm blogit

kubectl apply -f secret.yaml
kubectl apply -f configmap.yaml
kubectl apply -f deployments.yaml
kubectl apply -f services.yaml
