#!/bin/sh

if [ $SSH_ON = true ]
then
    /usr/sbin/sshd

fi

npm start