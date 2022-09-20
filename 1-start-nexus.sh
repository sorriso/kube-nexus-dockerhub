nerdctl -n k8s.io pull sonatype/nexus3:3.41.1
nerdctl -n k8s.io pull nginx:1.23.1-alpine

kubectl apply -f ./common/nexus-namespace.yaml
sleep 2
kubectl apply -f nexus
