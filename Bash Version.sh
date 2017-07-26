#!/bin/bash


#echo "<result>`x='() { \:;}; echo VULNERABLE' sh -c :`</result>"

echo "<result>`bash --version | cut -d " " -f4 | grep -v "Free"`</result>"


#ea_display_name	Bash Version
