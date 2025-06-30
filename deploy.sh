#!/bin/bash
set -ex  

echo "Current user: $(whoami)"
echo "Home dir: $HOME"
ls -la ~/.ssh

REMOTE_USER=mylendad
REMOTE_HOST=192.168.100.2
REMOTE_DIR=/usr/local/bin
LOCAL_DIR=src/build/*

ssh -o BatchMode=yes ${REMOTE_USER}@${REMOTE_HOST}

scp $LOCAL_DIR ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}