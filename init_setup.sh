#/bin/bash

set -e

# start jenkins and registry
docker-compose up -d --build

# TODO wait for image pulling
echo "waiting 30 sec for jenkins is ready"
sleep 30

./get_jenkins_unlock_pwd.sh
