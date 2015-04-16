#!/bin/sh

cd /srv/servermon/servermon
sed -i -e 's/managed = False/managed = True/' puppet/models.py
./manage.py syncdb --migrate --noinput
# And now undo it
sed -i -e 's/managed = True/managed = False/' puppet/models.py
