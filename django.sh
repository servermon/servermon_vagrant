#!/bin/sh

cd /srv/servermon/servermon
sudo -u www-data ./manage.py syncdb --noinput
sudo -u www-data ./manage.py migrate --noinput
sudo -u www-data ./manage.py loaddata vendor-model sampledata
