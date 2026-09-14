#!/usr/bin/env sh
set -eu
if [ "$#" -lt 7 ]; then
  echo "usage: $0 VM IMAGE PUBLIC_REPO PRIVATE_REPO CONTROL_ID OUTPUT TIMEOUT" >&2
  exit 2
fi
VM=$1; IMAGE=$2; PUBLIC_REPO=$3; PRIVATE_REPO=$4; CONTROL_ID=$5; OUTPUT=$6; TIMEOUT_SECONDS=$7
export PCA_PUBLIC_REPOSITORY="$PUBLIC_REPO"
export PCA_EVALUATION_REPOSITORY="$PRIVATE_REPO"
export PCA_CONTROL_ID="$CONTROL_ID"
export PCA_CONTROL_OUTPUT="$OUTPUT"
SCRIPT="$PRIVATE_REPO/scripts/run-control.st"
if command -v timeout >/dev/null 2>&1; then
  timeout "${TIMEOUT_SECONDS}s" "$VM" --headless "$IMAGE" st --quit "$SCRIPT"
else
  "$VM" --headless "$IMAGE" st --quit "$SCRIPT"
fi
