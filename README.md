# SU RADIUS container

Stanford CentOS 7.2 FreeRADIUS 3 container

# Usage

`radiusd.service` contains a `systemd` unit for running the continer
and setting up ports 1812 and 1813. In addition to the `/etc/raddb` volume,
it also mounts configuration volumes from `/srv/radiusd/freeradius`
onto `/etc/freeradius`

# TODO

* re-enable Postgres support

