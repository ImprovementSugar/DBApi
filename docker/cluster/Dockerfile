FROM ringcentral/jdk:8

ARG DEBIAN_FRONTEND=noninteractive
ARG VERSION
ARG SERVER_NAME=standalone

ENV DOCKER true

ADD dist/dbapi-3.2.1-bin.tar.gz /opt/


WORKDIR /opt/dbapi-3.2.1

EXPOSE 8520 8523 8525
#ENTRYPOINT bash /opt/dbapi-3.2.1/bin/dbapi.sh start ${SERVER_NAME}
#ENTRYPOINT ["tail", "-f", "/dev/null"]