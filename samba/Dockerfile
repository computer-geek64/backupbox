# Dockerfile
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y samba

RUN mkdir -p /data
RUN groupadd family

WORKDIR /code
COPY src .
RUN cp smb.conf /etc/samba/smb.conf

ENTRYPOINT ["smbd", "-F", "--no-process-group"]
