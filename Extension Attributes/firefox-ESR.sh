#!/usr/bin/env bash
################################################################################
#Script is designed to return the 'version number' of Mozilla Firefox ESR.     # 
#Locates the bundleID 'org.mozilla.firefox' then verifies 'esr'                #
#before returning 'version number' or 'not installed'                          #
################################################################################
exe="/usr/bin/defaults read"
commandBundle="CFBundleIdentifier"
commandVersion="CFBundleShortVersionString"
commandGrep="grep -c mozilla-esr"
outputVersion="Not Installed"
for file in /Applications/*.app
do
    filepath=$file'/Contents/Info.plist'
    
    if [ -f "$filepath" ]; then
        bundleID="$($exe "$filepath" $commandBundle)"
        if [ "$bundleID" == "org.mozilla.firefox" ]; then
            iniPath=$file'/Contents/Resources/application.ini'
            if [ -f "$iniPath" ]; then
                isESR="$($commandGrep "$iniPath")"
                if (($isESR)); then
                    outputVersion="$($exe "$filepath" $commandVersion)"    
                fi
            fi
        fi
    fi
done
echo "<result>$outputVersion</result>"
