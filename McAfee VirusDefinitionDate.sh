#!/bin/sh
#This script has been verified to work on McAfee Security for Mac Anti-malware (v1.0).

#Check to see if McAfee Security is installed
if [ -f "/Library/Preferences/com.mcafee.ssm.antimalware.plist" ]; then
	result=`date -r "$(/usr/bin/defaults read /Library/Preferences/com.mcafee.ssm.antimalware Update_DAT_Time)" "+%Y-%m-%d %H\:%M:%S"`
	echo "<result>$result</result>"
else
	echo "<result>Not installed</result>"
fi
