#!/bin/bash

if [[ ${MANAGER_USER} ]]; then
    echo "Manager username configuration detected, setting it to $MANAGER_USER"
    sed -i -e "s/username=\"admin\"/username=\"$MANAGER_USER\"/g" conf/tomcat-users.xml
fi
if [[ ${MANAGER_PASSWORD} ]]; then
    echo "Manager password configuration detected, setting it"
    sed -i -e "s/password=\"admin\"/password=\"$MANAGER_PASSWORD\"/g" conf/tomcat-users.xml
fi
if [[ ${SCRIPT_USER} ]]; then
    echo "Script username configuration detected, setting it to $SCRIPT_USER"
    sed -i -e "s/username=\"scriptuser\"/username=\"$SCRIPT_USER\"/g" conf/tomcat-users.xml
fi
if [[ ${SCRIPT_PASSWORD} ]]; then
    echo "Script user password configuration detected, setting it"
    sed -i -e "s/password=\"scriptpass\"/password=\"$SCRIPT_PASSWORD\"/g" conf/tomcat-users.xml
fi
if [[ ${CONTEXT_CONFIG} ]]; then
    echo "Context file configuration detected, setting it"
    sed -i -e "s#</Context>#$CONTEXT_CONFIG</Context>#g" conf/context.xml
fi

source catalina.sh run
