#!/bin/bash

##############################################################################################
## Script to extract colors used in .Xdefaults or .Xresources as bash variables.
## This is useful if you want to use the same term colors in  lemonbar, panel, panel_bar.
## COLORFILE can either .Xdefaults or .Xresources or a file included the aformentioned files.
## --phantom_voltage
##############################################################################################


OUTFILE=~/.config/var_colors

COLORFILE=~/.config/term_colors


COLORLIST=(FOREGROUND BACKGROUND BLACK0 BLACK1 RED0 RED1 GREEN0 GREEN1 YELLOW0 YELLOW1 BLUE0 BLUE1 MAGENTA0 MAGENTA1 CYAN0 CYAN1 WHITE0 WHITE1)

COLORS=(foreground background color0 color8 color1 color9 color2 color10 color3 color11 color4 color12 color5 color13 color6 color14 color7 color15)

echo -e "#vim: set ft=sh: \n" > $OUTFILE

i=0

for c in "${COLORS[@]}"
do
	TEMP=$(echo $(grep $c: $COLORFILE | cut -d':' -f2 | sed 's/ //g' ))
	echo "${COLORLIST[i]}=\"$TEMP\"" >> $OUTFILE
	i=$((i+1))
done
