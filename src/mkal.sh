#!/bin/bash
shopt -s expand_aliases

# Takes a user-supplied executable name (with extension if applicable) and, if the file exists,
# a permanent alias is created for it so it can be used with just its name rather than with a leading "./"

workingdir=$(pwd)

exename=$1
withdotslash="./$exename"

if test -f $exename; then
        echo "Creating alias $exename for executable $exename"
        echo alias $exename="$workingdir/$withdotslash" >> ~/.bash_aliases
        echo "Alias successfully created."
	# Reload bash to apply aliases
        rebash
else
        echo "File $exename does not exist"
        echo "Alias creation failed."
fi
