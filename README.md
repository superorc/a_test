# test task

## Run jenkins and registry

        $ ./init_setup.sh

You will be promted for password and few clicks like "temp password is: d5029c6802754470b970929daf8e1802 got to http://localhost:8080 , enter temp password and click Install suggested plugins". Do it and wait until all sugested pluggins are installed.

Jenkins admin password is writed down to `jenkins_pwd` file in current dir

After this you will see the form with creating user. Just click Continiue as admin on the right bot corner.

On the Instance Configuration screen click on "save and finish".

You can see "Jenkins is ready!" screen if you done right, click "start using jenkins"

### If you didn't saw "Welcome to Jenkins!", run

        $ ./cleanup.sh

and proceed with step 1