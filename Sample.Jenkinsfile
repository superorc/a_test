#!groovy
// a_test job to check dind working
node () {

    stage("Test dockerd is avaliable") {
        docker.image('alpine:latest').inside() {
            sh 'echo "poc for A, hey Inna"'
        }
    }

    stage("Get src form king's repo") {
        git branch: '*/job', 
        url: 'https://github.com/superorc/a_test.git'
    }

}