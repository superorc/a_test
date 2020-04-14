# test task


### Dependencies
Install it via pkg manager

    docker

    docker-compose


### Start

Run this to apply me to the job

    ./RUN_ME.sh


### Start registry, master and client

    docker-compose up --build

It will run jenkins master on http://localhost:8080, creds are (could be changed in compose file):

    user: a_user
    passsd: a_pwd

as well as jenkins_cli container, it will download jar client from master end exit( at this step)