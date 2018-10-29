#!/bin/sh
set -eux

exec /usr/bin/ssh -N -L 0.0.0.0:3306:127.0.0.1:3306 -i /home/mysql/.ssh/${KEYNAME} "$@"
