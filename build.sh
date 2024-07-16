#!/bin/bash

# ANSIBLE_VERSION=4.8.0
# ALPINE_LINUX_VERSION=3.15
ANSIBLE_VERSION=2.10.0
ALPINE_LINUX_VERSION=3.15

if [ -n "$1" ]; then
    ANSIBLE_VERSION=$1;
    shift 1
fi

# Ansible 4.8.0
# (docker build --build-arg ANSIBLE_VERSION=${ANSIBLE_VERSION} --build-arg ALPINE_LINUX_VERSION=$ALPINE_LINUX_VERSION. -t rareloop/ansible:${ANSIBLE_VERSION} && docker push rareloop/ansible:${ANSIBLE_VERSION})
docker build --build-arg ANSIBLE_VERSION=${ANSIBLE_VERSION} --build-arg BASE_IMAGE=alpine:${ALPINE_LINUX_VERSION} . -t rareloop-local/ansible:${ANSIBLE_VERSION}

