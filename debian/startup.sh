#!/bin/sh

if [ $SSH_ON ]
then
    /usr/sbin/sshd
fi

npm start