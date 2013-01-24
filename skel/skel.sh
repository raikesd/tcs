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

#------------------------------------------------------------------------------
#	Function: Usage
#
#	print the script usage.
#------------------------------------------------------------------------------
Usage()
{
	echo " usage: $0 "
	exit 0
}

#------------------------------------------------------------------------------
#	function: ParseParameter
#	
#	Parse teh command-line options.
#------------------------------------------------------------------------------
ParseParameters() 
{
while getopts ":dh" opt; do
	case $opt in
		d)
			set -x
			;;
		h)
			Usage
			;;
		\?)
			echo "Invalid argument: (-$OPTARG)"
			exit 1
			;;
	esac
done
}

#---- Main Routine ----#
ParseParameters $@
exit 0
