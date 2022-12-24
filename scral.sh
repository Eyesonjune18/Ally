#!/bin/bash
shopt -s expand_aliases

# Takes a user-supplied script name (without the extension) and, if the script exists,
# a permanent alias is created for it so it can be used with just its name rather than with a leading "./"

workingdir=$(pwd)

scriptname=$1
withextension="$scriptname.sh"
withdotslash="./$withextension"

if test -f $withextension; then
        echo "Creating alias $scriptname for shell script $withextension"
        echo alias $scriptname="$workingdir/$withdotslash" >> ~/.bash_aliases
        echo "Alias successfully created."
	# Reload bash to apply aliases
        rebash
else
        echo "File $withextension does not exist"
        echo "Alias creation failed."
fi
