FROM alpine:latest
LABEL maintainer="github+sshguard@wurzelbenutzer.de"
RUN apk add --no-cache --update-cache iptables ip6tables sshguard && mkdir -p /var/db/sshguard/ 
# as sshguard uses %PREFIX%/etc/sshguard.conf
COPY . /usr/etc/
VOLUME /var/db
ENTRYPOINT ["/usr/sbin/sshguard"]

