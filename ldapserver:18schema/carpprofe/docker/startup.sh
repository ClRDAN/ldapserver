#! /bin/bash
/usr/sbin/slapd -u ldap -h "ldap:/// ldaps:/// ldapi:///" && echo "slapd ok"
pidof slapd
