#!/bin/sh

cd /srv/servermon/servermon
./manage.py syncdb --migrate --noinput
