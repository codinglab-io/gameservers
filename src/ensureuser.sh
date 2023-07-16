#!/bin/bash

# checking $USER is not working if the script is run with "sudo -u someuser", but whoami works correctly.
if [ "$(whoami)" != "gameserver" ]; then
        echo "Script must be run as user: gameserver"
        exit 255
fi