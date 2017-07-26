#!/usr/bin/env bash
##############################################################################
#Script is designed to return the 'version number' of Mozilla Firefox.       #
#Locates the bundleID 'org.mozilla.firefox' then verifies 'release'          #
#before returning 'version number' or 'not installed'                        #
##############################################################################
exe="/usr/bin/defaults read"
commandBundle="CFBundleIdentifier"
commandVersion="CFBundleShortVersionString"
commandGrep="grep -c mozilla-release"
outputVersion="Not Installed"
for file in /Applications/*.app
do
    filepath=$file'/Contents/Info.plist'
    
    if [ -f "$filepath" ]; then
        bundleID="$($exe "$filepath" $commandBundle)"
        if [ "$bundleID" == "org.mozilla.firefox" ]; then
            iniPath=$file'/Contents/Resources/application.ini'
            if [ -f "$iniPath" ]; then
                isRelease="$($commandGrep "$iniPath")"
                if (($isRelease)); then
                    outputVersion="$($exe "$filepath" $commandVersion)"    
                fi
            fi
        fi
    fi
done
echo "<result>$outputVersion</result>"


#ea_display_name	mozilla-firefox
