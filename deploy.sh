#!/bin/bash
set -ex

export HOME=/home/gitlab-runner

REMOTE_USER=mylendad
REMOTE_HOST=192.168.100.2
REMOTE_DIR=/usr/local/bin
LOCAL_DIR=src/build/*

scp $LOCAL_DIR ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}

touch /home/gitlab-runner/env_new.sh
chmod +w /home/gitlab-runner/env_new.sh
sleep 45
echo "DEPLOY_JOB_STATUS=$CI_JOB_STATUS" > /home/gitlab-runner/env_new.sh
cat /home/gitlab-runner/env_new.sh