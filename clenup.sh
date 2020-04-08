#/bin/bash
set -e

docker-compose down

JENKINS_VULUME=$(docker volume list | grep jenkins_home | awk '{ print $2 }')
echo $JENKINS_VULUME

docker volume remove $JENKINS_VULUME