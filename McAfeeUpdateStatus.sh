#!/bin/sh
#This script has been verified to work on McAfee Security for Mac Anti-malware (v1.0).

#Check to see if McAfee Security is installed
if [ -f "/Library/Preferences/com.mcafee.ssm.antimalware.plist" ]; then
	result=`/usr/bin/defaults read /Library/Preferences/com.mcafee.ssm.antimalware Update_Status`
	if [ "$result" == "AV_Successful" ];then
		echo "<result>Successful</result>"
	else
		result="Update Failed"
	fi
else
	echo "<result>Not installed</result>"
fi
     	

