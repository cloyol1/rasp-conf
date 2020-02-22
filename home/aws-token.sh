#!/usr/bin/env bash

ORG="rivendeltec"

docker run -it --rm -v $HOME/.aws/:/root/.aws/ ${ORG}/aws-sts "$@"