#!/bin/bash

# The mapping definition for the indices associated with the jms messages from beast server/client


# Create the Index
curl -XPUT 'http://localhost:9200/alarms'

# Set the mapping
curl -XPUT 'http://localhost:9200/alarms/_mapping/beast' -d'
{
  {
      "beast" : {
        "properties" : {
          "APPLICATION-ID" : {
            "type" : "string"
          },
          "CONFIG" : {
            "type" : "string"
          },
          "CURRENT_SEVERITY" : {
            "type" : "string"
          },
          "CURRENT_STATUS" : {
            "type" : "string"
          },
          "EVENTTIME" : {
            "type" : "date",
            "format" : "yyyy-MM-dd HH:mm:ss.SSS"
          },
          "HOST" : {
            "type" : "string"
          },
          "NAME" : {
            "type" : "string",
            "index" : "not_analyzed"
          },
          "SEVERITY" : {
            "type" : "string"
          },
          "STATUS" : {
            "type" : "string"
          },
          "TEXT" : {
            "type" : "string"
          },
          "TYPE" : {
            "type" : "string"
          },
          "USER" : {
            "type" : "string"
          },
          "VALUE" : {
            "type" : "string"
          }
        }
      }
    }
}'
