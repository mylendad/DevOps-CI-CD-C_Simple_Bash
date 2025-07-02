#!/bin/bash

source /home/gitlab-runner/env.sh

JOBS_JSON=$(curl -s --header "PRIVATE-TOKEN: $TOKEN" \
  "$CI_API_V4_URL/projects/$CI_PROJECT_ID/pipelines/$CI_PIPELINE_ID/jobs")

echo "JOBS_JSON:"
echo "$JOBS_JSON" | head -n 20

get_status() {
  echo "$JOBS_JSON" | jq -r ".[] | select(.name==\"$1\") | .status"
}

STATUS_FORMAT=$(get_status format_project)
STATUS_BUILD=$(get_status build_project)
STATUS_TESTS=$(get_status tests_project)
STATUS_DEPLOY=$(get_status deploy_project)

set -ex

URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
TEXT="Pipeline Status:%0A%0A\
Format: $STATUS_FORMAT%0A\
Build: $STATUS_BUILD%0A\
Tests: $STATUS_TESTS%0A\
Deploy: $STATUS_DEPLOY%0A\
$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s --max-time $TIME -d "chat_id=$TELEGRAM_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
