#!/bin/bash

cp '/datapunt/standalone-ha.xml' '/opt/jboss/keycloak/standalone/configuration/'

#pushd /opt/jboss/keycloak
#
#bin/jboss-cli.sh --file=/datapunt/standalone-configuration.cli
#rm -rf standalone/configuration/standalone_xml_history
#
#bin/jboss-cli.sh --file=/datapunt/standalone-ha-configuration.cli
#rm -rf standalone/configuration/standalone_xml_history/current/*
#
#popd

##################
# Start Keycloak #
##################

HOST_IP=`hostname -i`
#exec /opt/jboss/docker-entrypoint.sh \
#    -b "${HOST_IP}" \
#    --server-config "standalone.xml" \
#    "$@"

exec /opt/jboss/docker-entrypoint.sh \
    -b "${HOST_IP}" \
    -bprivate "${HOST_IP}" \
    --server-config "standalone-ha.xml" \
    "$@"

#exec /opt/jboss/docker-entrypoint.sh -b "${HOST_IP}" --server-config "standalone.xml" "$@"
exit $?
