#!/bin/bash
 
TYPE=$1
if [ "$1" != "rx" -a "$1" != "tx" ]; then
    echo "Invalid argument: $1" 1>&2
    echo "Must be 'tx' or 'rx'" 1>&2
    echo "Usage: $0 (rx|tx)" 1>&2
    exit 1
fi
 
FILE=/tmp/i3blocks_bandwidth_$TYPE
touch $FILE
 
PREV=$(cat $FILE)
CUR=0
 
NETDIR=/sys/class/net
for IFACE in $(ls -1 $NETDIR); do
    # Skip the loopback interface
    if [ "$IFACE" == "lo" ]; then
        continue
    fi
    F=$NETDIR/$IFACE/statistics/${TYPE}_bytes
    N=$(cat $F)
    CUR=$(expr $CUR + $N)
done
 
delta=$(expr $CUR - $PREV)
echo $(expr $delta / 1000) kB/s
 
echo $CUR > $FILE