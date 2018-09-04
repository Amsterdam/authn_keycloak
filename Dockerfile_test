FROM jboss/keycloak:4.3.0.Final

COPY --chown=jboss:jboss "themes" "/opt/jboss/keycloak/themes"

COPY --chown=jboss:jboss datapunt /datapunt

EXPOSE 8112
EXPOSE 45688/UDP
EXPOSE 45700
EXPOSE 55200/UDP

#RUN sed -i.bak "s/<web-context>auth<\/web-context>/<web-context>authn\/v1<\/web-context>/g" "/opt/jboss/keycloak/standalone/configuration/standalone.xml"

ENTRYPOINT [ "/datapunt/docker-entrypoint.sh" ]
CMD [ ]

#SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = 'authn_keycloak' AND pid <> pg_backend_pid();
