# Ansible Docker

A simple dockerfile based on Alpine linux which installs the requested Ansible Version.

## Building

You can build an image by doing the following: `docker build --build-arg ANSIBLE_VERSION=4.8.0 . -t tomb1n0/ansible:4.8.0`. Replace the ANIBLE_VERSION and tag name with whatever you need.

## Usage example

You can use a created image like so: `docker run -it --rm -v "$PWD":/ansible -v ~/.ssh:/root/.ssh:delegated -w /ansible tomb1n0/ansible:4.8.0 ansible-playbook main.yml`