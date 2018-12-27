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

for cmd in "$@"; do
    echo "Running '$cmd'..."
    if sh -c "jfrog rt $cmd"; then
        # no op
        echo "Successfully ran '$cmd'"
    else
        exit_code=$?
        echo "Failure running '$cmd', exited with $exit_code"
        exit $exit_code
    fi
done