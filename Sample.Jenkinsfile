#!groovy
// a_test job to check dind working
node () {

    // TODO add cleanup workspase stage

    stage("Test dockerd is avaliable") {
        docker.image('alpine:latest').inside() {
            sh 'echo "poc for A, hey Inna"'
        }
    }

    stage("Get src form  CI_king's repo") {
        checkout(
            [$class: 'GitSCM', 
            branches: [[name: '*/job']], 
            userRemoteConfigs: [[url: 'https://github.com/superorc/a_test.git']]
        ])
        //git branch: '*/job',
        //url: 'https://github.com/superorc/a_test.git'
    }

}