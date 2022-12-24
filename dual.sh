#!/bin/bash
shopt -s expand_aliases

# Dump current aliases to persistent aliases file
cp ~/.bash_aliases ~/.bash_aliases_persistent

# Reload bash to apply aliases
rebash
