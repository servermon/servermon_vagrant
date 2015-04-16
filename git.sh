#!/bin/sh

sed -i .bak -e 's/http.us.debian.org/http.debian.net/' /etc/apt/sources.list
apt-get update
apt-get install git -y
cd /srv/
if [ ! -d servermon ]; then
	git clone http://github.com/servermon/servermon.git
fi
