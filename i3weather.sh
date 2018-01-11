#!/bin/sh
# shell script to prepend i3status with weather

i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && while :
do
  read line
  temp=$(cat ~/.weather.cache | grep -m 1 -Eo -e '-?[[:digit:]].*°C')
  echo ",[{\"full_text\":\" ${temp}\",\"color\":\"#00FF00\" },${line#,\[}" || exit 1
done)
