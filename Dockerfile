FROM ringcentral/jdk:8

ARG DEBIAN_FRONTEND=noninteractive
ARG VERSION

ENV DOCKER true

ADD dist/dbapi-3.2.1-bin.tar.gz /opt/

COPY docker/init_config.sh /opt/init_config.sh
COPY docker/startup.sh /opt/startup.sh

WORKDIR /opt/dbapi-3.2.1

EXPOSE 8520 8523 8525
RUN sed -i 's/\r//' /opt/startup.sh
RUN sed -i 's/\r//' /opt/init_config.sh
#ENTRYPOINT bash /opt/startup.sh
ENTRYPOINT bash /opt/dbapi-3.2.1/bin/dbapi.sh start standalone
#ENTRYPOINT ["tail", "-f", "/dev/null"]