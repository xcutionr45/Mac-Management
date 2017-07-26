#!/bin/bash
LastRebootDate=`sysctl kern.boottime | awk '{print $10,$11,$12,$13,$14}'`
echo "<result>$LastRebootDate</result>"
