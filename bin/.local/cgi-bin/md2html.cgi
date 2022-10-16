#!/bin/sh
#
# `md2html.cgi`: Render markdown files as html for local browsing
#
# Dependencies: `pandoc`
# Environment: QUERY_STRING

: "${NOTES:="$HOME/Notes"}"

case $QUERY_STRING in
note:*)
	file="$NOTES/${QUERY_STRING#note:}" ;;
*)
	file="${QUERY_STRING#*://}" ;;
esac
echo 'Content-type: text/html'
echo
if ! test -e "$file"
then
	echo "<p>404 not found: $file</p>"
	exit
fi
pandoc -s -f markdown+smart -t html5 "$file" 2>/dev/null

