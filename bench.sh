#!/bin/sh

systemctl restart isubata.python.service
: > /var/log/nginx/access.log
: > /var/log/mysql/slow.log
/home/isucon/isubata/bench/bin/bench -data=/home/isucon/isubata/bench/data -remotes=localhost
