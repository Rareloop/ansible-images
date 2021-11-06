#!/bin/bash

# Ansible 4.8.0
(docker build --build-arg ANSIBLE_VERSION=4.8.0 . -t tomb1n0/ansible:4.8.0 && docker push tomb1n0/ansible:4.8.0)

