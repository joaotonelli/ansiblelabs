set -x
apt-get update
apt-get install docker-compose-v2 -y
mkdir /tmp/share && mv /tmp/README /tmp/share/
docker compose -f /tmp/infra.yml up -d
echo $$ > /tmp/setup.finished
