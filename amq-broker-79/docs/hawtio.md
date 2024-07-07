## The HawtIO Console

A-MQ7 ships with the HawtIO console to allow you to adminster the A-MQ7 broker

###Security

By default HawtIO will use the adminsitrative user, password and role that were provided during the create command so if 
you created A-MQ7 instance as follows:
 
      $ARTEMIS_HOME/bin/artemis create amq
      Creating ActiveMQ Artemis instance at: /home/ataylor/devtools/artemis-profiles/amq

      --user: is mandatory with this configuration:
      Please provide the default username:
      admin

      --password: is mandatory with this configuration:
      Please provide the default password:


      --role: is mandatory with this configuration:
      Please provide the default role:
      admin

      --allow-anonymous | --require-login: is mandatory with this configuration:
      Allow anonymous access? (Y/N):
      y
      
then you would log into HawtIO using the user and password provided. To log in use the URL http://localhost:8161/hawtio/login.
Once logged in click on the Artenis tab to see the jmx tree and custom views.


