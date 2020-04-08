#!/bin/bash

set -e # exit in case of any errors

# get jenkins container id
JENKINS_MASTER_ID=$(docker ps | grep jenkins_master_1 | awk '{ print $1 }')

# get tmp password
UNLOCK_JENKINS=$(docker exec $JENKINS_MASTER_ID cat /var/jenkins_home/secrets/initialAdminPassword)
echo "temp password is: $UNLOCK_JENKINS got to http://localhost:8080 , enter temp password and click Install suggested plugins"

# save pwd to file
echo $UNLOCK_JENKINS > jenkins_pwd