#!/bin/bash

echo "Checking to see if var/log/kern.log is empty..."

if [-s /var/log/kern.log]
then
    echo "/var/log/kern.log is not empty, copying file now..."
    cp /var/log/kern.log /var/log/kern.log.backup
    echo "Backup successfully copied to /var/log/kern.log.backup"

    echo "Now emptying /var/log/kern.log..."
    cat /dev/null > /var/log/kern.log
    echo "/var/log/kern.log succesfully cleared."
else
    echo "/var/log/kern.log is empty, exiting script."
    exit 1
fi
exit 0