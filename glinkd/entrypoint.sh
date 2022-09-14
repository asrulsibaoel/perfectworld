#!/bin/bash

envsubst < /home/gamesys.conf.tmpl \
         > /home/gamesys.conf
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata

exec "$@"