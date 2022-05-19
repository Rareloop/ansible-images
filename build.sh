#!/bin/bash

ANSIBLE_VERSION=4.8.0

if [ -n "$1" ]; then
    ANSIBLE_VERSION=$1;
    shift 1
fi

# Ansible 4.8.0
(docker build --build-arg ANSIBLE_VERSION=${ANSIBLE_VERSION} . -t tomb1n0/ansible:${ANSIBLE_VERSION} && docker push tomb1n0/ansible:${ANSIBLE_VERSION})

