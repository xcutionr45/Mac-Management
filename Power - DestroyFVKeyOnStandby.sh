#!/bin/sh
echo "<result>`pmset -g | grep DestroyFVKeyOnStandby | /usr/bin/awk '{ print $2 }'`</result>"


#ea_display_name	Power - DestroyFVKeyOnStandby
