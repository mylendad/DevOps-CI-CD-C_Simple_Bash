#!/bin/bash
set -ex

REMOTE_USER=mylendad
REMOTE_HOST=192.168.100.2
REMOTE_DIR=/usr/local/bin
LOCAL_DIR=src/build/*

ssh -o BatchMode=yes \
    -o UserKnownHostsFile=/home/gitlab-runner/.ssh/known_hosts \
    ${REMOTE_USER}@${REMOTE_HOST}

scp -o UserKnownHostsFile=/home/gitlab-runner/.ssh/known_hosts \
    -o StrictHostKeyChecking=yes \
    -v $LOCAL_DIR ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}