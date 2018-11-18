#! /bin/bash
# @edt ASIX M06 2018-2019
# instalacion slapd edt.org
#----------------------------
rm -rf /etc/openldap/slapd.d/*
rm -rf /var/lib/ldap/*
if [ -d "/var/lib/ldapfrik" ]
then rm -rf /var/lib/ldapfrik/*
else mkdir /var/lib/ldapfrik
fi
cp /opt/docker/DB_CONFIG /var/lib/ldap/
slaptest -f /opt/docker/slapd.conf -F /etc/openldap/slapd.d
slapadd -F /etc/openldap/slapd.d -l /opt/docker/edt.ldif
chown -R ldap.ldap /etc/openldap/slapd.d
chown -R ldap.ldap /var/lib/ldap

