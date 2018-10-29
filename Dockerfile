FROM alpine:3.8

MAINTAINER Knut Ahlers <knut@ahlers.me>

ENV KEYNAME=id_rsa

SHELL ["/bin/sh", "-ex", "-c"]
RUN apk --no-cache add openssh \
 && adduser -h /home/mysql -S -D -u 100 mysql

USER mysql

VOLUME "/home/mysql/.ssh"
EXPOSE 3306/tcp

COPY run.sh /usr/local/bin

ENTRYPOINT ["/usr/local/bin/run.sh"]
