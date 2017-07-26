#!/bin/sh
mdmEnrollmentProfileID="<YOUR MDM PROFILEID>"
enrolled=`/usr/bin/profiles -C | /usr/bin/grep "$mdmEnrollmentProfileID"`
if [ "$enrolled" != "" ]; then
    echo "<result>Enrolled</result>"
else
    echo "<result>Not Enrolled</result>"
fi
