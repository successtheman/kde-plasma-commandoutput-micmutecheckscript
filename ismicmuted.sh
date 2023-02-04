#!/bin/bash

#little script made for KDE command output widget to show if my mic is muted or not

#define colors here do `printf "%b"`` to set color 
#use like so ${red} etc to put directly next to strings
resetcolor='\e[0m'
green='\e[1;32m'
red='\e[1;31m'

# Get active audio source index
CURRENT_SOURCE=$(pactl info | grep "Default Source" | cut -f3 -d" ")


# List lines in pactl after the source name match and pick mute status
Muted=$(pactl list sources | grep -A 10 $CURRENT_SOURCE | grep "Mute: yes")
##test echo Muted variable for debugging
# echo $Muted
#if statement for checking if mic is muted or not ([-n ] checks if the variable is null or not) https://unix.stackexchange.com/a/109631
if [ -n "$Muted" ]; then
  #printf Muted with mic on right side in red
  #use {}around variables to have no spaces between var and string
  printf "%b" "${red}Muted ${resetcolor}"

else
  #printf Unmuted with mic on left side in Green
  printf "%b" "${green} Unmuted${resetcolor}"
fi
