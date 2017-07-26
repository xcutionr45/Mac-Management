#!/bin/bash

AutoMount=`dsconfigad -show | grep "Use Windows" | cut -d " " -f 11`

echo "<result>$AutoMount</result>"


#ea_display_name	Home Directory Auto Mount
