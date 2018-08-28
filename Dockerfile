FROM jboss/keycloak:4.3.0.Final

COPY --chown=jboss:jboss "themes" "/opt/jboss/keycloak/themes"

RUN sed -i.bak "s/<web-context>auth<\/web-context>/<web-context>authn\/v1\/auth<\/web-context>/g" "/opt/jboss/keycloak/standalone/configuration/standalone.xml"

#CMD ["-b", "0.0.0.0", "--server-config", "standalone.xml"]
