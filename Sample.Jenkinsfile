#!groovy
// a_test job to check dind working
node () {

    // TODO add cleanup workspase stage
    stage("Clean up ws") {
        cleanWS()
    }

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
    }

    stage("Build docker image") {
        docker.withRegistry('https://docker-registry:443') {

            def img = docker.build("kotlin-1.3.71:${env.BUILD_ID}")
            img.push()
            
        }
    }

}