FROM ubuntu:14.04

MAINTAINER Bernardo Lins <bernardolins28@gmail.com>

RUN apt-get update -y
RUN apt-get install -y \
  dovecot-core    \
  dovecot-imapd   \
  dovecot-ldap    \
  dovecot-lmtpdl  \
  dovecot-pop3d

RUN echo "mail.* -/var/log/mail.log" >> /etc/rsyslog.conf
RUN touch /var/log/mail.log && chown syslog:adm /var/log/mail.log

