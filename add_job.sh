#!/bin/bash

set -e

JENKINS_URL='http://jenkins-master:8080'
JENKINS_USER='a_user'
JENKINS_PWD='a_pwd'

# get cli from master
wget http://jenkins-master:8080/jnlpJars/jenkins-cli.jar --output-document=jenkins-cli.jar

# command
echo "injecting job config"
#echo "/root/.jenkins/jobs/a_pipeline/config.xml" > java -jar jenkins-cli.jar -s $JENKINS_URL -auth $JENKINS_USER:$JENKINS_PWD create-job a_pipeline_poc
java -jar jenkins-cli.jar -s $JENKINS_URL -auth $JENKINS_USER:$JENKINS_PWD create-job a_pipeline_poc < /root/.jenkins/jobs/a_pipeline/config.xml


# restart master
echo "restarting master"
java -jar jenkins-cli.jar -s $JENKINS_URL -auth $JENKINS_USER:$JENKINS_PWD restart