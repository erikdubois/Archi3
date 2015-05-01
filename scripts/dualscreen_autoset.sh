#!/bin/bash
#
# Dual monitor support

if xrandr | grep -q 'DVI-I-0 connected' && xrandr | grep -q 'DVI-I-3 connected'
then
	xrandr --output DVI-I-0 --auto --left-of DVI-I-3

fi

if xrandr | grep -q 'DVI-0 connected' && xrandr | grep -q 'DVI-1 connected'
then
	xrandr --output DVI-0 --auto --left-of DVI-1

fi


if xrandr | grep -q 'DVI-I-1 connected' && xrandr | grep -q 'DVI-I-2 connected'
then
	xrandr --output DVI-I-1 --auto --left-of DVI-I-2

fi


if xrandr | grep -q 'DVI-I-2 connected' && xrandr | grep -q 'DVI-I-3 connected'
then
	xrandr --output DVI-I-2 --auto --left-of DVI-I-3

fi