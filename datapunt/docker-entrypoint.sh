#!/bin/bash

echo "KEYCLOAK_WEB_CONTEXT: ${KEYCLOAK_WEB_CONTEXT}"

pushd /opt/jboss/keycloak

bin/jboss-cli.sh --file=/datapunt/standalone-configuration.cli
rm -rf standalone/configuration/standalone_xml_history

bin/jboss-cli.sh --file=/datapunt/standalone-ha-configuration.cli
rm -rf standalone/configuration/standalone_xml_history/current/*

popd

##################
# Start Keycloak #
##################

exec /opt/jboss/docker-entrypoint.sh "$@"
exit $?
