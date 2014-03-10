#!/bin/bash

set -e;

if pkill -0 waagent ; then
    pkill -9 waagent
fi

cp waagent /usr/sbin/
/usr/sbin/waagent -install
/usr/sbin/waagent -daemon