#!/usr/bin/env bash

set -e
set -o pipefail
source ./.env

# Create api-user
if [ ! -f /etc/icinga2/conf.d/icingaweb-api-user.conf ]; then
  sed "s/\$ICINGAWEB_ICINGA2_API_USER_PASSWORD/${ICINGAWEB_ICINGA2_API_USER_PASSWORD:-icingaweb}/" ./icingaweb-api-user.conf > /etc/icinga2/conf.d/icingaweb-api-user.conf
fi

# # Icingadb feature
# if [ ! -f /etc/icinga2/features-enabled/icingadb.conf ]; then
#   mkdir -p /etc/icinga2/features-enabled
#   cat ./icingadb.conf > /etc/icinga2/features-enabled/icingadb.conf
# fi
