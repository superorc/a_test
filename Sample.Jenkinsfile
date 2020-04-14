#!groovy
// a_test job to check dind working
node () {

    stage("Test docker") {
        docker.image('alpine:latest').inside() {
            sh 'uname -a'
        }
    }

}