#!/usr/bin/env zsh
#Start thelounge only if it is not running
STARTED=$(ps aux | grep /usr/local/bin/thelounge | grep -v grep | wc -l)
echo "$STARTED"
if [[ "$STARTED" -le 0 ]]; then
 thelounge start
 echo "thelounge Server Started"
else
 echo "thelounge Server Already Running"
fi
