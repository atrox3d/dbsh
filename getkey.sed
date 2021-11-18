#!/bin/bash

#
#	default args/vars
#
here="$(dirname ${BASH_SOURCE[0]})"
. "${here}/.defaults"
#
#	optional args
#
[ $# -gt 1 ] && db="$2"
[ $# -gt 2 ] && delim="$(echo -e "$3")"

key="$1"
delim="$(echo -e "$delim")"

#grep "^$key" "$db" | cut -d"$delim" -f2
#sed -n /^"$key"/p "$db" | sed "s/^$key\t//"
sed -n /^"$key"/p "$db" | sed "s/^${key}${delim}//"
