#!/bin/bash
# demo of functions within a shell script structure

# script or global variables
CMDLINE=$1

echo "My script has started"

#displays a message
funcExample () {
    echo "This is an example"
}

# display another message
funcExample2 () {
    echo "This is another example"
}

# functions definitions - stop
echo "This is the start..."
funcExample
funcExample2