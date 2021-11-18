#!/bin/bash

################################################################################
#
#	default args/vars
#
################################################################################
here="$(dirname ${BASH_SOURCE[0]})"
name="$(basename ${BASH_SOURCE[0]})"
. "${here}/.defaults"
################################################################################
#
#	mandatory args
#
################################################################################
[ $# -eq 1 ] || {
	echo "syntax $name key [ db ]"
	exit 1
}
################################################################################
#
#	optional args
#
################################################################################
[ $# -gt 1 ] && db="$2"
[ $# -gt 2 ] && delim="$3"

key="$1"
delim="$(echo -e "$delim")"

#grep "^$key" "$db" | cut -d"$delim" -f2
#sed -n /^"$key"/p "$db" | sed "s/^$key\t//"
sed -n /^"$key"/p "$db" | sed "s/^${key}${delim}//"
