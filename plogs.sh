#!/bin/bash
echo "watching logs of $1"

kubectl logs $1 -n default -f