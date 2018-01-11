#!/bin/sh
# shell script to prepend i3status with weather

i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && while :
do
  read line
  # temp=$(curl -s wttr.in?T | grep -m 1 -Eo -e '-?[[:digit:]].*°C')
  temp=$(inxi -w | sed -n "s/^.*(\s*\(\S*\).*$/\1°C/p")
  echo ",[{\"full_text\":\" ${temp}\",\"color\":\"#00FF00\" },${line#,\[}" || exit 1
done)
