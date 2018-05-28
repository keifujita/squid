#!/bin/bash
set -e
htpasswd -b -c /etc/squid/passwd "${username:-username}" "${password:-password}"
exec "$@"
