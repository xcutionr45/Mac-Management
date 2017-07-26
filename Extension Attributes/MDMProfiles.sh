#!/bin/sh

PROFILES_SYSTEM=$(profiles -P | sed \$d | awk '{print $NF}' | tr ' ' '\n' | uniq -u | sort)
echo "<result>$(echo $PROFILES_SYSTEM | tr ' ' '\n')</result>"
