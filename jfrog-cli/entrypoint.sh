#!/bin/sh

set -e

echo "Authentication using $CRED";

if [ $CRED == "username" ]; 
then 
    sh -c "jfrog rt $COMMAND --url=$URL --user=$USER --password=$PASSWORD $COMMANDOPTS $COMMANDARGS"
elif [ $CRED == "apikey" ];
then 
    sh -c "jfrog rt $COMMAND --apikey=$APIKEY $COMMANDOPTS $COMMANDARGS"
elif [ $CRED == "accesstoken" ];
then 
    sh -c "jfrog rt $COMMAND --access-token=$ACCESSTOKEN $COMMANDOPTS $COMMANDARGS"
else 
    echo "ERROR! No authentication has been set :("; 
fi