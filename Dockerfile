FROM docker.elastic.co/beats/filebeat:7.13.2

ENV ENVIRONMENT=""
ENV HOSTNAME=""

COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN mkdir /usr/share/filebeat/dockerlogs
RUN mkdir /usr/share/filebeat/dockerlogs/data
RUN chown -R root /usr/share/filebeat/
RUN chmod -R go-w /usr/share/filebeat/
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
RUN chown root:filebeat /usr/share/filebeat/dockerlogs/
RUN chown root:filebeat /var/run/docker.sock
RUN chown -R root /var/run/docker.sock
RUN chown root:filebeat /var/run/docker.sock
USER filebeat
