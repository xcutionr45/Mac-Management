#!/bin/bash

ADMCheck=`dscl . -list /Groups | grep admin | grep -v _lpadmin`

if [ `dscl . -list /Groups | grep '^admin$'` == admin ] ;
then 
    echo "<result>Admin group exists</result>" 
else
    echo "<result>Admin has been removed</result>" 
fi

    


#ea_display_name	Local Admin Group exists
