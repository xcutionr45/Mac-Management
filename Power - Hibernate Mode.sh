#!/bin/sh
echo "<result>`pmset -g | grep hibernatemode | /usr/bin/awk '{ print $2 }'`</result>"


#ea_display_name	Power - Hibernate Mode
