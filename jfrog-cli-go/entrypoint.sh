#!/bin/sh

set -e

echo "Authentication using $CRED";

if [ $CRED = "username" ]; 
then
    sh -c "jfrog rt config --interactive=false --enc-password=true --url=$URL --user=$USER --password=$PASSWORD"
elif [ $CRED = "apikey" ];
then
    sh -c "jfrog rt config --interactive=false --enc-password=true --url=$URL --apikey=$APIKEY"
elif [ $CRED = "accesstoken" ];
then 
    sh -c "jfrog rt config --interactive=false --enc-password=true --url=$URL --access-token=$ACCESSTOKEN"
else 
    echo "ERROR! No authentication has been set :("; 
fi

sh -c "jfrog rt $COMMAND"