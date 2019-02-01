#!/bin/bash

if [ "$#" != "3" ]; then
    echo "USAGE: checkargs.sh [parm1] [parm2] [parm3]"
    exit 300
else
    echo "I live! I got what I needed!"
    exit 44
fi

echo ""