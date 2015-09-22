#!/bin/sh

cd /srv/servermon/servermon
sed -i -e 's/managed = False/managed = True/' puppet/models.py
./manage.py syncdb --noinput
./manage.py migrate --noinput
./manage.py loaddata vendor-model
./manage.py loaddata sampledata
# And now undo it
sed -i -e 's/managed = True/managed = False/' puppet/models.py
