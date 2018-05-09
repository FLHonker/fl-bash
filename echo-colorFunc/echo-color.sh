#!/bin/bash
  
function _color_()  
{  
    case "$1" in  
        red)    nn="31";;  
        green)  nn="32";;  
        yellow) nn="33";;  
        blue)   nn="34";;  
        purple) nn="35";;  
        cyan)   nn="36";;  
    esac  
    ff=""  
    case "$2" in  
        bold)   ff=";1";;  
        bright) ff=";2";;  
        uscore) ff=";4";;  
        blink)  ff=";5";;  
        invert) ff=";7";;  
    esac  
    color_begin=`echo -e -n "\033[${nn}${ff}m"`  
    color_end=`echo -e -n "\033[0m"`  
    while read line; do  
        echo "${color_begin}${line}${color_end}"  
    done  
}  
#__main__  
echo "this is a test" | _color_ blue bold 
