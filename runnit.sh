#!/bin/sh

hostname

touch /log.txt

if [ ! -f /dnschef.ini ]; then
  mv /dnschef.ini.tmpl /dnschef.ini
fi

python /dnschef-0.3/dnschef.py --interface `hostname` --file /dnschef.ini --log /log.txt &

tail -f /log.txt
