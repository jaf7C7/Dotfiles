#!/bin/sh
#
# `w3medit.cgi`: Edit the current document, or edit the source file if it's a
#                cgi-generated page.
#
# Dependencies: `w3m`
# Environment: W3M_URL

: "${NOTES:="$HOME/Notes"}"

case $W3M_URL in
note:*)
	file="$NOTES/${W3M_URL#note:}" ;;
file:*)
	file="${W3M_URL#file://}" ;;
esac
echo 'Content-Type: text/html'
if test -e "$file"
then
	echo "W3m-control: LOAD $file"
	echo 'W3m-control: DELETE_PREVBUF'
	echo "W3m-control: GOTO_LINE $W3M_CURRENT_LINE"
	echo 'W3m-control: EDIT'
	echo 'W3m-control: BACK'
else
	echo 'W3m-control: BACK'
	echo 'W3m-control: DELETE_PREVBUF'
	echo 'W3m-control: EDIT'
fi
echo

