#!/bin/bash

set -e

JENKINS_URL='http://jenkins-master:8080'
JENKINS_USER='a_user'
JENKINS_PWD='a_pwd'
A_JOB_NAME='a_pipeline_poc'

# get cli from master
wget http://jenkins-master:8080/jnlpJars/jenkins-cli.jar --output-document=jenkins-cli.jar

# command
echo "injecting job config"
#echo "/root/.jenkins/jobs/a_pipeline/config.xml" > java -jar jenkins-cli.jar -s $JENKINS_URL -auth $JENKINS_USER:$JENKINS_PWD create-job $A_JOB_NAME
java -jar jenkins-cli.jar -s $JENKINS_URL -auth $JENKINS_USER:$JENKINS_PWD create-job $A_JOB_NAME < /root/.jenkins/jobs/a_pipeline/config.xml


# restart master
echo "restarting master"
java -jar jenkins-cli.jar -s $JENKINS_URL -auth $JENKINS_USER:$JENKINS_PWD restart

echo " wait 30 sec until master is running"
sleep 30

# build a_pipeline
echo "building target pipeline"
java -jar jenkins-cli.jar -s $JENKINS_URL -auth $JENKINS_USER:$JENKINS_PWD build $A_JOB_NAME