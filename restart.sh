#!/bin/bash

set -e;

if pkill -0 waagent ; then
    echo "Stopping waagent..."
    pkill -9 waagent
fi

cp waagent /usr/sbin/
echo "Installing waagent..."
/usr/sbin/waagent -install -verbose
echo "Starting waagent..."
/usr/sbin/waagent -daemon -verbose