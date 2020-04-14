#!/bin/bash

JENKINS_URL='http://jenkins-master:8080'
JENKINS_USER='a_user'
JENKINS_PWD='a_pwd'

# get cli
wget http://jenkins-master:8080/jnlpJars/jenkins-cli.jar

# coomand
java -jar jenkins-cli.jar $JENKINS_URL -auth $JENKINS_USER:$JENKINS_PWD --help