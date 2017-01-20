#!/bin/bash
# Arch upgradeable packages

list=`pacman -Sup 2> /dev/null`

if [ "$list" == "" ]; then
    count=0
else
    count=`echo "$list" | wc -l`
fi

# if you want to see the names as well
#for pkg in $list; do
#    echo -n "  "
#    echo $pkg | sed -e 's#.*/##g' -e 's%(.*).pkg.*$%1%'
#done
echo "  Total: $count"