# A-MQ7

##Building A-MQ7

The A-MQ7 build pulls in the Artemis binary, unzips it and overlays configuration, templates and other files. These are 
under the distribution/src/main/resources files.

> note that if these files change upstream then they may need to be changed in A-MQ7 as well.

The build also pulls in HawtIO as this is used as the management console and also an Artemis HawTIO plugin. To build A-MQ7
using Maven run the command `mvn install`
