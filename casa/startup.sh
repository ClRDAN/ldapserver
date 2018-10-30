#! /bin/bash
# @EDT ASIX M06 2018-2019
# crear y encender slapd con edt.org
#-----------------------------------
/opt/docker/install.sh && echo "Install OK"
/sbin/slapd -d0 && echo "slapd OK"
