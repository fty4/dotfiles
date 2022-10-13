#!/bin/bash

# check if helm plugin is already present
if (helm plugin list | grep diff); then
  helm plugin update diff > /dev/null
else
  helm plugin install https://github.com/databus23/helm-diff > /dev/null
fi
