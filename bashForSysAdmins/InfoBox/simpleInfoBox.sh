#!/bin/bash
# demo of a simple info box with dialog and ncurses

# yum install dialog

INFOBOX=${INFOBOX=dialog} # INFOBOX now equals to "dialog" command
TITLE="Default"
MESSAGE="Something to say"
XCOORD=10
YCOORD=20

# functions declarations - start


# display the infobox and our message
funcDisplayInfobox () {
    $INFOBOX -- title "$1" --infobox "$2" "$3" "$4"
    sleep "$5"
}

# function declarations - stop

# script - start

if [ "$1" == "shutdown" ]; then
    funcDisplayInfoBox "WARNING!" "We are SHUTTING DOWN the SYSTEM..." "11" "21" "5"
    echo "Shutting Down!"
else
    funcDisplayInfoBox "Information..." "you are not doing anything fun..." "11" "21" "5"
    echo "Not doing anything..."
fi
