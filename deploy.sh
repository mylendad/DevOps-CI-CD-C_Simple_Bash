#!/bin/bash
set -ex

export HOME=/home/gitlab-runner

REMOTE_USER=mylendad
REMOTE_HOST=192.168.100.2
REMOTE_DIR=/usr/local/bin
LOCAL_DIR=src/build/*

ssh -o BatchMode=yes \
    -o UserKnownHostsFile=$HOME/.ssh/known_hosts \
    ${REMOTE_USER}@${REMOTE_HOST}

scp  -o UserKnownHostsFile=$HOME/.ssh/known_hosts \
    $LOCAL_DIR ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}