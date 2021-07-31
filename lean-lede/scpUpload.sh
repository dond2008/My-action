#!/bin/bash
expect -c "
spawn scp $1 root@139.155.21.250:/root/DXC
expect {
    \"*assword\"
                {
                    set timeout ;
                    send \"$2\r\";
                }
    \"yes/no\"
                {
                    send \"yes\r\"; exp_continue;}
                }
expect eof"
