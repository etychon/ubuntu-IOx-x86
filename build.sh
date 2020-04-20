#!/bin/sh
set -ex
VERSION=`cat VERSION`
docker build -t ubuntu-iox-x86:${VERSION} .  
ioxclient docker package ubuntu-iox-x86:${VERSION} . --auto --use-targz -n ubuntu-IOx-x86-${VERSION}
