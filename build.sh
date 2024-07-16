#!/bin/bash
# You can get an idea for which alpine version you need by looking here:
# https://pkgs.alpinelinux.org/packages?name=python3&branch=v3.15&repo=&arch=&maintainer=
#
# You can check what Python3 version is available for which Alpine Linux version and adjust accordingly.
#
# You should check https://endoflife.date/ansible to consider which Python version is suitable.

# Using two parallel arrays to match up an ansible version to its base alpine image
# MacOS doesn't come with a high enough bash version to use bash associative arrays.
ANSIBLE_VERSIONS=("2.10.0" "3.4.0" "4.8.0" "4.10.0" "5.5.0" "5.8.0" "5.10.0" "6.7.0" "7.7.0" "8.7.0" "9.7.0" "10.1.0")
BASE_IMAGES=("alpine:3.13" "alpine:3.15" "alpine:3.15" "alpine:3.15" "alpine:3.16" "alpine:3.16" "alpine:3.16" "alpine:3.16" "alpine:3.18" "alpine:3.18" "alpine:3.20" "alpine:3.20")

LENGTH=${#ANSIBLE_VERSIONS[@]}

for (( i=0; i<${LENGTH}; i++ )); do
    ANSIBLE_VERSION=${ANSIBLE_VERSIONS[$i]}
    BASE_IMAGE=${BASE_IMAGES[$i]}

    echo "=====================";
    echo "Ansible Version: ${ANSIBLE_VERSION}";
    echo "Base Image: ${BASE_IMAGE}";
    echo "=====================";

    docker build --build-arg ANSIBLE_VERSION="${ANSIBLE_VERSION}" --build-arg BASE_IMAGE="${BASE_IMAGE}" . -t rareloop-local/ansible:"${ANSIBLE_VERSION}"
    docker run -it --rm rareloop-local/ansible:"${ANSIBLE_VERSION}" ansible --version

    echo "";
    echo "";
    echo "";
done