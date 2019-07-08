#!/bin/bash

# Generate fonts for Adafruit-Gfx library usage

# Generated font will be written in the same directory the script is invoked
# Source fonts are expected in a subdirectory TTF

#fonts="FreeSans ClearSans Hack"
#styles="Regular Bold Italic"
fonts="ClearSans"
styles="Medium"
sizes="10 12 16 18 32"

for fo in $fonts
do
  for st in $styles
  do  
    for sz in $sizes
    do
      ttf=TTF/${fo}-${st}.ttf
      inc=${fo}-${st}-${sz}pt7b.h
      ../fontconvert/fontconvert ${ttf} ${sz} > ${inc}
      echo "#include \"${inc}\""
    done
  done
done
