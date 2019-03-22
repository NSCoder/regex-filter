#!/bin/bash

set -e

REGEX="$*"

if [[ $GITHUB_REF = "" ]]; then
  echo "\$GITHUB_REF is not set"
  exit 1
elif [[ $GITHUB_REF =~ $REGEX ]]; then
  echo "$GITHUB_REF matches $REGEX"
  exit 0
else
  echo "$GITHUB_REF does not match $REGEX"
  exit 78
fi
