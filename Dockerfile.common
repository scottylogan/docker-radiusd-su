FROM scottylogan/rpi-radiusd
MAINTAINER Scotty Logan <swl@stanford.edu>

USER root

RUN yum -y install openssl-perl pyOpenSSL python-pyasn1 python-pyasn1-modules python-requests freeradius-python
RUN yum -y install freeradius-mysql freeradius-krb5 freeradius-ldap cyrus-sasl-gssapi
COPY krb5.conf /etc/krb5.conf
COPY ldap.conf /etc/openldap/ldap.conf

USER radiusd

VOLUME /etc/freeradius

# for debugging, use
CMD [ "/usr/bin/sbin/radiusd", "-X" ]
# and look at the journald log

#CMD [ "/usr/sbin/radiusd", "-f" ]

