#!/bin/bash
# demostrating variable scope

# global variable declaration
GLOBALVAR="Globally Visible"

# function definitions - start

# sample function for function variable scope
functExample() {
    # local variable to the function
    LOCALVAR="Locally visible"

    echo "From within the function, the variable is $LOCALVAR..."
}

# functions definitions - stop 

# script = start
clear

echo "this step happers first..."
echo ""
echo "GLOBAL variable = $GLOBALVAR (before the function call)"
echo "LOCALVAR variable = $LOCALVAR (before the function call)"
echo ""
echo "Calling Function - funcExample()"
echo ""

funcExample

echo "function has been called"
echo "GLOBAL variable = $GLOBALVAR (before the function call)"
echo "LOCALVAR variable = $LOCALVAR (before the function call)"

