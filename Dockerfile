FROM alpine:latest

# Use Ansible 4.8.0 by default
ARG ANSIBLE_VERSION=4.8.0
ENV ENV_ANSIBLE_VERSION=$ANSIBLE_VERSION

# Installs Dependencies
# Note: Apply fix from Jeff that allows pip install to work without --break-system-packages
# https://www.jeffgeerling.com/blog/2023/how-solve-error-externally-managed-environment-when-installing-pip3
RUN apk add --update python3 py-pip openssl ca-certificates bash git sudo zip \
    && apk add --update --virtual build-dependencies python3-dev libffi-dev openssl-dev build-base \
    && find /usr/lib/python* | grep EXTERNALLY-MANAGED | xargs rm \
    && pip install --upgrade pip cffi \
    && pip install --upgrade pycrypto pywinrm \
    && apk add --update sshpass openssh-client rsync

# Install Ansible
RUN pip install ansible==$ENV_ANSIBLE_VERSION

# Remove APK cache etc
RUN apk del build-dependencies \
    && rm -rf /var/cache/apk/*
