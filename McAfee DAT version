#!/bin/sh

#Check to see if McAfee Security is installed
if [ -f "/Library/Preferences/com.mcafee.ssm.antimalware.plist" ]; then
#Output DAT version if installed
result=`/usr/bin/defaults read /Library/Preferences/com.mcafee.ssm.antimalware Update_DATVersion`
echo "<result>$result</result>"
else
echo "<result>Not installed</result>"
fi
