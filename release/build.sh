#!/bin/bash
# *************************************************
# * FileName    : build.sh
# * Author      : laojun
# * Time        : 2024/4/30 15:46
# * Description : -
# *************************************************

export PGRDIR=$(cd `dirname $0`; pwd)
export WORKSPACE=${PGRDIR}/../

source ${PGRDIR}/env.sh

# only set VERSION if not set
[[ -z "$VERSION" ]] && VERSION=latest

# break shell when fail
set -e

# main release image
echo Step3. make release image
docker ${DOCKER_OPTS} build -t ${DOCKER_REGISTRY_URL}/${DOCKER_NAME_SPACE}/${DOCKER_IMAGE_NAME}:${VERSION} -f ${PGRDIR}/Dockerfile ${WORKSPACE}
