#grep "^$1" "$2" | cut -d$'\t' -f2
sed -n /^"$1"/p "$2" | sed "s/^$1\t//"
