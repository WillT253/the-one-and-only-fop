#!/bin/bash

# Configuration
REPO_URL="https://github.com/WillT253/the-one-and-only-fop.git"
INSTALL_DIR="$HOME/.the-one-and-only-fop"
BIN_DIR="/usr/local/bin"
SCRIPT_NAME="the-one-and-only-fop"
COMMAND_NAME="the-one-and-only-fop" # Added this definition because I'm inconsistent with naming and also lazy

echo "Starting installation..."

# Clone or Update the Repository
if [ -d "$INSTALL_DIR/.git" ]; then
  echo "Directory ~/.the-one-and-only-fop exists. Pulling latest changes..."
  git -C "$INSTALL_DIR" pull
else
  echo "Cloning repository to ~/.the-one-and-only-fop..."
  git clone "$REPO_URL" "$INSTALL_DIR"
fi

# Ensure the script is executable
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

# Create the Symlink (Requires sudo)
echo "The installer is about to symlink the program to $BIN_DIR. This requires elevated permissions."
echo "   You may be prompted for your sudo password now."

sudo ln -sf "$INSTALL_DIR/$SCRIPT_NAME" "$BIN_DIR/$COMMAND_NAME"

echo "Installation complete!"
echo "You can now run $COMMAND_NAME."
