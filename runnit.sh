#!/bin/sh

hostname

touch /log.txt

python /dnschef-0.3/dnschef.py --interface `hostname` --file dnschef.ini --log /log.txt &

tail -f /log.txt
