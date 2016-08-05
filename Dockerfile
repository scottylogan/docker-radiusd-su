FROM scottylogan/rpi-radiusd
MAINTAINER Scotty Logan <swl@stanford.edu>

USER root

RUN yum -y install openssl-perl pyOpenSSL python-pyasn1 python-pyasn1-modules python-requests

USER radiusd

VOLUME /etc/freeradius

# for debugging, use
# CMD [ "/usr/bin/sbin/radiusd", "-X" ]
# and look at the journald log

CMD [ "/usr/sbin/radiusd", "-f" ]

