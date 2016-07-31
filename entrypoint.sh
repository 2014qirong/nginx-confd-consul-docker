#!/bin/bash

# source: https://github.com/yaronr/dockerfile/blob/master/haproxy-confd

if [ -z "$CONSUL_NODE" ]
then
  echo "Missing CONSUL_NODE env var"
  exit -1
fi

# the pipeline’s return status is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands exit successfully
# The shell waits for all commands in the pipeline to terminate before returning a value.
set -eo pipefail

echo "[nginx-confd] booting container. CONSUL: $CONSUL_NODE"

export HOSTNAME=`hostname`

until confd -onetime -backend consul -node "$CONSUL_NODE"; do
  echo "[nginx-confd] waiting for confd to refresh nginx config files"
  sleep 3
done

echo "[nginx-confd] Initial config created. Starting confd"

confd -node "$CONSUL_NODE"
