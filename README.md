# Ally
Ally is a set of simple scripts for creating and managing persistent Bash aliases. It can turn executables of all types into commands that can be used anywhere.

## Installation
Installation can be done with just 4 commands.

First, download the installer script:  
`curl -LJO https://raw.githubusercontent.com/Eyesonjune18/Ally/main/installer/install.sh`  
This will download the script into your current working directory.

You may need to add permissions to the script in order to run it: `chmod +x install.sh`

Run the script: `./install.sh`  
This will download all necessary files into their correct places.

Finally, to use Ally, you can either reload your terminal by reopening it, or by typing: `source ~/.bashrc`

Put together, this (should) be able to be installed in a simple copy-paste.
```
curl -sLJO https://raw.githubusercontent.com/Eyesonjune18/Ally/main/installer/install.sh
chmod +x install.sh
./install.sh
source ~/.bashrc
```

The installer script will delete itself automatically when the installation finishes.

## Explanation & Usage
Ally contains five basic commands.

### scral
scral stands for "Script Alias." It adds a shell script alias to .bash_aliases.  
Usage: `scral <name of script without .sh extension>`

### mkal
mkal stands for "Make Alias." It adds an alias for any executable file to .bash_aliases. It will also remove the executable's extension if applicable.  
Usage: `mkal <name of any executable file>`

### real
real stands for "Reset Aliases." It resets the aliases in .bash_aliases by reverting to those in .bash_aliases_persistent.  
Usage: `real`

### dual
dual stands for "Dump Aliases." It saves the aliases in .bash_aliases by adding them to .bash_aliases_persistent.  
Usage: `dual`

### rebash
rebash stands for "Reload Bash." It reverts working aliases to those in .bash_aliases, and reloads the terminal to apply changes.  
Usage: `rebash`
