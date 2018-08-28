FROM jboss/keycloak:4.3.0.Final

COPY --chown=jboss:jboss "themes" "/opt/jboss/keycloak/themes"

CMD ["-b", "0.0.0.0", "--server-config", "datapunt.xml"]

#FROM golang:latest
#
#WORKDIR /go/src/github.com/amsterdam/authz
#COPY . /go/src/github.com/amsterdam/authz
#RUN go get github.com/sparrc/gdm
#RUN gdm restore
#RUN go install
#ENTRYPOINT ["authz"]
