rm -rf /var/lib/ldap/*
rm -rf /etc/openldap/slapd.d/*
cp DB_CONFIG /var/lib/ldap/.

slaptest -v -f slapd-edt.org.conf -F /etc/openldap/slapd.d
slaptest -v -f slapd-edt.org.conf -F /etc/openldap/slapd.d -u

chown -R ldap.ldap /var/lib/ldap/
chown -R ldap.ldap /etc/openldap/slapd.d
./startup.sh

ldapadd -vx -D "cn=Manager,dc=edt,dc=org" -w jupiter -f organitzacio_edt.org.ldif 
ldapadd -vx -D "cn=Manager,dc=edt,dc=org" -w secret -f organitzacio-altres_edt.org.ldif 
ldapadd -vx -D "cn=Manager,dc=edt,dc=org" -w secret -f newdades.ldiff 

