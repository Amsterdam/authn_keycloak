FROM jboss/keycloak:4.3.0.Final

COPY --chown=jboss:jboss "themes" "/opt/jboss/keycloak/themes"

RUN sed -i.bak "s/<web-context>auth<\/web-context>/<web-context>authn\/v1<\/web-context>/g" "/opt/jboss/keycloak/standalone/configuration/standalone.xml"

#CMD ["-b", "0.0.0.0", "--server-config", "standalone.xml"]
#SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = 'authn_keycloak' AND pid <> pg_backend_pid();
