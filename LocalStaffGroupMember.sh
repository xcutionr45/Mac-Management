#!/bin/bash
#Variables
loggeduser=`ls -l /dev/console | cut -d " " -f4`
STAFF=`dscl . read /Groups/staff GroupMembership 2>/dev/null | tr ' ' '\n' | sed '1d' | grep "$loggeduser"`

if [[ $STAFF == "$loggeduser" ]] ; 
then 
    echo "<result>The logged in user ($STAFF) is part of the staff group</result>" ;
else
   echo "<result>The logged in user is NOT part of the staff group</result>" ;

fi
