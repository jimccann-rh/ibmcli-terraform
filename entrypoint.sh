#!/bin/bash

export IC_API_KEY=${IBMCLOUD_API_KEY}

eval "$(ssh-agent -s)"
ssh-add /run/localsshkeys/id_rsa

if [ $INTERATCIBMCLI = false ] ; then
/usr/local/bin/ibmcloud login --apikey $IBMCLOUD_API_KEY --no-region > /tmp/login.txt
/usr/local/bin/ibmcloud $@
else
bash
fi
