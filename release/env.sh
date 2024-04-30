#!/bin/bash
# *************************************************
# * FileName    : env.sh
# * Author      : laojun
# * Time        : 2024/4/30 15:46
# * Description : -
# *************************************************

export DOCKER_IMAGE_NAME=ipinfo
export DOCKER_IMAGE_NAME_TESTER=ipinfo
export DOCKER_INSTANCE_NAME=sdp-ipinfo
export DOCKER_INSTANCE_PORT=8888
export DOCKER_NAME_SPACE=laojun


# only set DOCKER_REGISTRY_URL if not set
[[ -z "$DOCKER_REGISTRY_URL" ]] && export DOCKER_REGISTRY_URL=docker.io

echo DOCKER_REGISTRY_URL: ${DOCKER_REGISTRY_URL}
