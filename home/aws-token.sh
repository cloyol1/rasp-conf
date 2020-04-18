#!/usr/bin/env bash

ORG="cloyol1"

docker run -it --network="host" --rm -v $HOME/.aws/:/root/.aws/ ${ORG}/aws-sts "$@"
