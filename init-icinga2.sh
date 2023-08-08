#!/usr/bin/env bash

set -e
set -o pipefail
source ./.env

# Create api-user
if [ ! -f /etc/icinga2/conf.d/icingaweb-api-user.conf ]; then
  sed "s/\$ICINGAWEB_ICINGA2_API_USER_PASSWORD/${ICINGAWEB_ICINGA2_API_USER_PASSWORD:-icingaweb}/" ./icingaweb-api-user.conf > /etc/icinga2/conf.d/icingaweb-api-user.conf
fi

# Icingadb feature
/usr/sbin/icinga2 feature enable icingadb

if [ ! -f /etc/icinga2/features-enabled/icingadb.conf ]; then
  sed "s/\$ICINGA_HOST/${ICINGA_HOST:-localhost}/" ./icingadb.conf > /etc/icinga2/features-enabled/icingadb.conf
fi

systemctl restart icinga2