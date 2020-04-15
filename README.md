# test task
Job xml added to master and triggered during startup via client container, job build and push Dockerfile with kotlin.

### Dependencies
Install it via pkg manager

    docker

    docker-compose


### Start

Clenup docker volumes and run docker compose (client container with exet with non zero with job already exists)

    ./RUN_ME.sh


### Start registry, master and client

    docker-compose up --build

It will run jenkins master on http://localhost:8080, creds are (could be changed in compose file):

    user: a_user
    passsd: a_pwd

as well as jenkins_cli container, it will download jar client from master, add job via jenkins-cli and trigger this job.
