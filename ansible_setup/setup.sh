set -x
kubectl apply -f /tmp/infra.yml --wait=true
echo $$ > /tmp/setup.finished
