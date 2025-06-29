#!/bin/bash
set -ex  

echo "Current user: $(whoami)"
echo "Home dir: $HOME"
ls -la ~/.ssh

REMOTE_USER=mylendad
REMOTE_HOST=10.0.2.15
REMOTE_DIR=/usr/local/bin
LOCAL_DIR=src/build/*

ssh -v -o BatchMode=yes ${REMOTE_USER}@${REMOTE_HOST}

scp -o StrictHostKeyChecking=no -v $LOCAL_DIR ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}