#! /bin/bash
WALLPAPERS="/home/phantom/images/walls"
ALIST=( `ls -w1 $WALLPAPERS` )
RANGE=${#ALIST[@]}
let "number = $RANDOM"
let LASTNUM="`cat $WALLPAPERS/.last` + $number"
let "number = $LASTNUM % $RANGE"
echo $number > $WALLPAPERS/.last
nitrogen --set-zoom-fill --save $WALLPAPERS/${ALIST[$number]} 
