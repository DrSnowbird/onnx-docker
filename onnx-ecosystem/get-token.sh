#!/bin/bash 

set +e

MY_DIR=$(dirname "$(readlink -f "$0")")

###################################################
#### **** Container package information ****
###################################################
MY_IP=` hostname -I|awk '{print $1}'`
DOCKER_IMAGE_REPO=`echo $(basename $PWD)|tr '[:upper:]' '[:lower:]'|tr "/: " "_" `
imageTag="${ORGANIZATION}/${DOCKER_IMAGE_REPO}"
#PACKAGE=`echo ${imageTag##*/}|tr "/\-: " "_"`
PACKAGE="${imageTag##*/}"

## -- transform '-' and space to '_' 
#instanceName=`echo $(basename ${imageTag})|tr '[:upper:]' '[:lower:]'|tr "/\-: " "_"`
instanceName=`echo $(basename ${imageTag})|tr '[:upper:]' '[:lower:]'|tr "/: " "_"`

#### ---- Customized Extension ---- ####
#sudo docker logs ${instanceName} 2>&1 | grep token

echo
echo ">>> TOKEN=$(sudo docker logs onnx-ecosystem 2>&1 | grep "?token=" |cut -d'=' -f2| tail -n1)"
