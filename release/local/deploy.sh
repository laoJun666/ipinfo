#!/bin/bash
# *************************************************
# * FileName    : deploy.sh
# * Author      : laojun
# * Time        : 2024/4/30 15:48
# * Description : -
# *************************************************

export PGRDIR=$(cd `dirname $0`; pwd)
WORKSPACE=$PGRDIR/../
export VERSION=$1
source $WORKSPACE/env.sh

export DOCKER_OPTS="
    --cpus=1 \
    -p $DOCKER_INSTANCE_PORT:80
"

# only set VERSION if not set
[ -z "$VERSION" ] && VERSION=latest


echo step1. rm  ${DOCKER_INSTANCE_NAME}
docker rm -f ${DOCKER_INSTANCE_NAME}

echo step2. run ${DOCKER_INSTANCE_NAME}
docker run --name=${DOCKER_INSTANCE_NAME} --hostname=${DOCKER_INSTANCE_NAME} -d --restart=always ${DOCKER_OPTS} ${DOCKER_REGISTRY_URL}/$DOCKER_NAME_SPACE/${DOCKER_IMAGE_NAME}:${VERSION}