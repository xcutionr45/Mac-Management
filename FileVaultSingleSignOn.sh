#!/bin/bash

FVSSO=$(defaults read /Library/Preferences/com.apple.loginwindow DisableFDEAutoLogin)
FDE=$(fdesetup status)

if [[ "$FDE" == "FileVault is On." ]]; then
    if [[ "$FVSSO" == "1" ]]; then
        echo '<result>File Vault Single Sign On is Disabled</result>'
    else
        echo '<result>File Vault Single Sign On is Enabled</result>'
    fi
else
    echo '<result>File Vault not enabled</result>'
fi
