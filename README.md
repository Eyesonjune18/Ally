# Ally
Ally is a set of simple scripts for creating and managing persistent Bash aliases. It can turn executables of all types into commands that can be used anywhere.

## Installation
Installation can be done with just 4 commands.

First, download the installer script:  
`curl -LJO https://raw.githubusercontent.com/Eyesonjune18/Ally/main/installer/install.sh`  
This will download the script into your current working directory.

You may need to add permissions to the script in order to run it:  
`chmod +x install.sh`

Run the script:  
`./install.sh`  
This will download all necessary files into their correct places.

Finally, to use Ally, you can either reload your terminal by reopening it, or by typing:  
`source ~/.bashrc`

Put together, this (should) be able to be installed in a simple copy-paste.
```
curl -LJO https://raw.githubusercontent.com/Eyesonjune18/Ally/main/installer/install.sh
chmod +x install.sh
./install.sh
source ~/.bashrc
```

You can then delete the installer script if you would like.
