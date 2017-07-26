#!/bin/bash

TBSERIAL=`system_profiler SPDisplaysDataType | grep "Display Serial Number" | cut -d " " -f14`
#if [ $TBSERIAL == "????????????" ]
#then 
#echo "<result>$TBSERIAL</result>"
#else
#echo "<result>No Thunderbolt Display currently attached</result>"
#fi

if [ $TBSERIAL == "" ]
then 
echo "<result>No Thunderbolt Display currently attached</result>"
else
echo "<result>$TBSERIAL</result>"
fi
