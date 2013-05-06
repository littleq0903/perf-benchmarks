#!/bin/bash

USER=$1
DEST_IP=$2
SSH_KEY=$HOME/.ssh/id_rsa
NETCAT_PORT=666

echo 'run netcat on destination server'
ssh -i $SSH_KEY $USER@$DEST_IP 'sudo nc -l 666 > /var/tmp/out.file'
