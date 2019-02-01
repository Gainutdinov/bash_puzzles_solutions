#!/bin/bash
# demo of nested functions and some abstraction

# global variable
GENDER=$1

# function definitions - start

# create a human being
funcHuman () {
    ARMS=2
    LEGS=2
    echo "A human has $ARMS and $LEGS legs - but whta gender are we?"
    funcMale () {
        BEARD=1

        echo "This man has $ARMS arms and $LEGS, with $BEARD beard(s)..."
        echo ""
    }
    funcFemale () {

        echo "This woman has $ARMS arms and $LEGS, with $BEARD beard(s)..."
        echo ""
    }
}

# functions definitions - stop

# script - start
clear
echo "determining the characteristics of the gender $GENDER"
echo ""

# determine the actual gender and display characterstics
if [ "$GENDER" == "male" ]; then
    funcHuman
    funcMale
else
    funcHuman
    funcFemale
fi