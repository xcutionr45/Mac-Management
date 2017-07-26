#!/bin/bash

LastReboot=$[($(date -j +%s)-$(sysctl kern.boottime | awk '{print $5}' | cut -d "," -f1))/86400]

if [ $LastReboot -ge 7 ] ;
then 
    echo "<result>$LastReboot days since last reboot. Machine needs to be restarted [Current Date]=`date`</result>"
else
    echo "<result>The machine last rebooted within 7 days [Current Date]=`date`</result>"
fi


#ea_display_name	Days since last reboot
