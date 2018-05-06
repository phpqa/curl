#!/bin/sh
set -e

if [ "${1:0:1}" = "-" ]; then
  set -- /sbin/tini -- curl "$@"
elif [ "$1" = "curl" ]; then
  set -- /sbin/tini -- "$@"
fi

exec "$@"
