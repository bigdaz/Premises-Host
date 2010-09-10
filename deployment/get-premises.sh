#!/bin/bash

if test -z "$3"
then
  echo "USAGE: get-premises.sh {VERSION} {USER} {PASSWORD}"
  exit
else
  VERSION=$1
  USER=$2
  PASSWORD=$3
fi

curl --insecure --user $USER:$PASSWORD --output premises-highrise-${VERSION}.zip https://repository.majitek.com/nexus/content/repositories/premises.releases/au/com/greensync/premises-highrise/${VERSION}/premises-highrise-${VERSION}.zip 
