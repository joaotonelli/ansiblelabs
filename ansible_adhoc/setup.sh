set -x
apt-get update
apt-get install docker-compose-v2 -y
docker compose -f /tmp/infra.yml up -d
echo $$ > /tmp/setup.finished
