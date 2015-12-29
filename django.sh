#!/bin/sh

cd /srv/servermon/servermon
./manage.py syncdb --noinput
./manage.py migrate --noinput
./manage.py loaddata vendor-model sampledata
