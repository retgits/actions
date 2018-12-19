#!/bin/sh

set -e

if [ -z ${USER+x} ]; 
then 
    echo "Authentication using username/password";
    sh -c "jfrog rt $COMMAND --url $URL --user $USER --password $PASSWORD $COMMANDOPTS $COMMANDARGS"
elif [ -z ${APIKEY+x} ];
then 
    echo "Authentication using API key";
    sh -c "jfrog rt $COMMAND --apikey $APIKEY $COMMANDOPTS $COMMANDARGS"
elif [ -z ${ACCESSTOKEN+x} ];
then 
    echo "Authentication using Access Token";
    sh -c "jfrog rt $COMMAND --access-token $ACCESSTOKEN $COMMANDOPTS $COMMANDARGS"
else 
    echo "ERROR! No authentication has been set :("; 
fi