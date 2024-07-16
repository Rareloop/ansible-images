#!/bin/bash
# You can get an idea for which alpine version you need by looking here:
# https://pkgs.alpinelinux.org/packages?name=python3&branch=v3.15&repo=&arch=&maintainer=
#
# You can check what Python3 version is available for which Alpine Linux version and adjust accordingly.
#
# You should check https://endoflife.date/ansible to consider which Python version is suitable.

docker build --build-arg ANSIBLE_VERSION=2.10.0 --build-arg BASE_IMAGE=alpine:3.13 . -t rareloop-local/ansible:2.10.0
docker build --build-arg ANSIBLE_VERSION=3.4.0 --build-arg BASE_IMAGE=alpine:3.15 . -t rareloop-local/ansible:3.4.0
docker build --build-arg ANSIBLE_VERSION=4.8.0 --build-arg BASE_IMAGE=alpine:3.15 . -t rareloop-local/ansible:4.8.0
docker build --build-arg ANSIBLE_VERSION=4.10.0 --build-arg BASE_IMAGE=alpine:3.15 . -t rareloop-local/ansible:4.10.0
docker build --build-arg ANSIBLE_VERSION=5.5.0 --build-arg BASE_IMAGE=alpine:3.16 . -t rareloop-local/ansible:5.5.0
docker build --build-arg ANSIBLE_VERSION=5.8.0 --build-arg BASE_IMAGE=alpine:3.16 . -t rareloop-local/ansible:5.8.0
docker build --build-arg ANSIBLE_VERSION=5.10.0 --build-arg BASE_IMAGE=alpine:3.16 . -t rareloop-local/ansible:5.10.0
docker build --build-arg ANSIBLE_VERSION=6.7.0 --build-arg BASE_IMAGE=alpine:3.16 . -t rareloop-local/ansible:6.7.0
docker build --build-arg ANSIBLE_VERSION=7.7.0 --build-arg BASE_IMAGE=alpine:3.18 . -t rareloop-local/ansible:7.7.0
docker build --build-arg ANSIBLE_VERSION=8.7.0 --build-arg BASE_IMAGE=alpine:3.18 . -t rareloop-local/ansible:8.7.0
docker build --build-arg ANSIBLE_VERSION=9.7.0 --build-arg BASE_IMAGE=alpine:3.20 . -t rareloop-local/ansible:9.7.0
docker build --build-arg ANSIBLE_VERSION=10.1.0 --build-arg BASE_IMAGE=alpine:3.20 . -t rareloop-local/ansible:10.1.0

