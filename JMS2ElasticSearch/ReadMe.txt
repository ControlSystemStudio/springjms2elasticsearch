Camel ActiveMQ Project
======================


This project embeds Apache ActiveMQ together with Apache Camel to enable the routing of jms messages.
The default example provided is for routing jms messages from cs-studio applications and services (BEAST) to an elastic search backend.

Pre-requisite:

elasticsearch
	##### Install
	Download and install elasticsearch from [elastic.com](https://www.elastic.co/downloads/elasticsearch)
    following the instructions for your platform.\
    <Alternatively:> Install the elastic server from your distribution using a package manager.
    
    ##### Create Index and Mapping
    There are examples scripts available under src/main/resources/scripts which 
    contain curl commands to create the elastic indices which would be used for BEAST along with the mapping definitions 
    for the jms messages produced by the beast server/client.

Define the Routes
	The src/main/resources/META-INF/spring/camel-context.xml file defines a default Camel Context and a set of routes 
	to forward jms messages from BEAST to elasticsearch. Update the uris to match your network architecture. 
	
	To define more routes/components/endpoints refer to spring user guide 
	http://camel.apache.org/spring.html

To build this project use

    mvn install

To run this project use the following Maven goal

    mvn camel:run

For more help see the Apache Camel documentation

    http://camel.apache.org/
