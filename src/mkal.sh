#!/bin/bash
shopt -s expand_aliases

# Takes a user-supplied executable name (with extension if applicable) and, if the file exists,
# a permanent alias is created for it so it can be used with just its name rather than with a leading "./"
# The alias will be the name of the executable with its extension removed

workingdir=$(pwd)

# Make sure an executable name was provided
if [ $# -eq 0 ]
then
    echo "Usage: mkal <executable filename>"
    # Return is used instead of exit because the script is sourced
    return 1
fi

# Set the filename variable to the first argument
exename=$1
withdotslash="./$exename"

# Make a friendly name for the alias by removing the file extension
noextension="${exename%.*}"

if test -f $exename; then
        echo "Creating alias $noextension for executable $exename"
        echo alias $noextension="$workingdir/$withdotslash" >> ~/.bash_aliases
        echo "Alias successfully created."
	# Reload bash to apply aliases
        rebash
else
        echo "File $exename does not exist"
        echo "Alias creation failed."
fi
