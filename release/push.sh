#!/bin/bash
# *************************************************
# * FileName    : push.sh
# * Author      : laojun
# * Time        : 2024/4/30 15:46
# * Description : -
# *************************************************

export PGRDIR=$(cd `dirname $0`; pwd)
export WORKSPACE=${PGRDIR}/../

source ${PGRDIR}/env.sh

# only set VERSION if not set
[[ -z "$VERSION" ]] && VERSION=latest

echo push image ${VERSION}
echo docker ${DOCKER_OPTS} push ${DOCKER_REGISTRY_URL}/${DOCKER_NAME_SPACE}/${DOCKER_IMAGE_NAME}:${VERSION}
docker ${DOCKER_OPTS} push ${DOCKER_REGISTRY_URL}/${DOCKER_NAME_SPACE}/${DOCKER_IMAGE_NAME}:${VERSION}
