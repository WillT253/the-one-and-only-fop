#!/bin/bash

# This script aims to clone the repo and add it to a directory in $PATH.
# Ensure you read this fully to ensure you know what this script does before running it.

set -e # ensure the script fails if any part of it goes wrong

# Logic for cloning/updating and checking git is installed (L8-29)
REPO_URL="https://github.com/WillT253/the-one-and-only-fop"
INSTALL_DIR="$HOME/bin/.the-one-and-only-fop"

echo "Installing to $INSTALL_DIR..."

if command -v git &>/dev/null; then
    if [ -d "$INSTALL_DIR" ]; then
        echo "Directory exists. Updating..."
        cd "$INSTALL_DIR"
        git pull
    else
        git clone "$REPO_URL" "$INSTALL_DIR"
        cd "$INSTALL_DIR"
    fi
    TARGET_DIR="$INSTALL_DIR"
else
     echo "Git is not installed on this device. Please install before running this script."
     exit 1
fi

cd "$TARGET_DIR"

chmod +x the-one-and-only-fop # Add execute permissions to the script

echo "The script has been successfully installed."
echo "Run it using $INSTALL_DIR/the-one-and-only-fop or manually add it to your \$PATH."
echo "(Hint: your \$PATH variable is usually set in \$HOME/.bashrc or a similar file.)"
