#!/bin/bash

install="$HOME/.local/bin/ally"

echo "Updating script files"
curl -sLo "$install/mkal.sh" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/src/mkal.sh
curl -sLo "$install/scral.sh" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/src/scral.sh
curl -sLo "$install/real.sh" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/src/real.sh
curl -sLo "$install/dual.sh" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/src/dual.sh
curl -sLo "$install/rebash.sh" https://raw.githubusercontent.com/Eyesonjune18/Ally/main/src/rebash.sh

echo "Checking permissions for script files"
chmod +x "$install/mkal.sh"
chmod +x "$install/scral.sh"
chmod +x "$install/real.sh"
chmod +x "$install/dual.sh"
chmod +x "$install/rebash.sh"

echo "Ally has been updated successfully."
