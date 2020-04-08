#/bin/bash

set -e

# start jenkins and registry
docker-compose up -d

echo "waiting 30 sec for jenkins is ready"
sleep 30

./get_jenkins_unlock_pwd.sh
