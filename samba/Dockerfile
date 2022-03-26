# Dockerfile
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y samba

RUN mkdir -p /data
RUN groupadd family
RUN useradd -ms /bin/false ashish
RUN usermod -aG family ashish
RUN useradd -ms /bin/false melvin
RUN usermod -aG family melvin
RUN useradd -ms /bin/false joy
RUN usermod -aG family joy

WORKDIR /code
COPY src .
RUN cp smb.conf /etc/samba/smb.conf

ENTRYPOINT ["smbd", "-F", "--no-process-group"]
