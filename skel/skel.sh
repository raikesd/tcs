#!/bin/bash
#################################################################################
#	File:
#	Author:	Donald Raikes <don.raikes@gmail.com>
#	Date:
#	Copyright:
#	Licence:	GPLv2
#
#	Description:
#-------------------------------------------------------------------------------
#	Date		Author		Description
#################################################################################

while getopt ":dh" opt; "$@"; do
case $opt in
	d) echo "option d was triggered" ;;
	h) echo "option h was triggered" ;;
	\?) echo "an invalid option was passed " ;;
esac
done
