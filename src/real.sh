#!/bin/bash
shopt -s expand_aliases

# Reset to persistent aliases
cp ~/.bash_aliases_persistent ~/.bash_aliases

# Reload bash to apply aliases
rebash
