#!/bin/sh

if test -z "$1"
then
  echo "USAGE: get-premises.sh {VERSION}"
  exit
else
  VERSION=$1
fi

USER=root
PASSWORD=root

curl --insecure --user $USER:$PASSWORD --output premises-highrise-${VERSION}.zip https://repository.majitek.com/nexus/content/repositories/premises.releases/au/com/greensync/premises-highrise/${VERSION}/premises-highrise-${VERSION}.zip 
