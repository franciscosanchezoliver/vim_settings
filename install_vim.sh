#!/bin/bash

# Define the source path (assuming the script is inside your Git repo)
REPO_PATH="$(cd "$(dirname "$0")" && pwd)"
VIMRC_SOURCE="$REPO_PATH/.vimrc"

# Define the destination
VIMRC_DEST="$HOME/.vimrc"

echo "Repo path: $REPO_PATH"
echo "vimrc source: $VIMRC_SOURCE"
echo "vimrc destination: $VIMRC_DEST"

# Copy the file
#cp "$VIMRC_SOURCE" "$VIMRC_DEST"

echo "Executing command: cp '$VIMRC_SOURCE' '$VIMRC_DEST'"
cp "$VIMRC_SOURCE" "$VIMRC_DEST"

echo "Vim configuration installed successfully."

# Reload .vimrc if inside a running Vim session

# pgrep is a command that searches for running processes by name.
# -x ensures that only processes with the exact name "vim" are matched (so it won't match things like "gvim" or "vimdiff").
# If Vim is running, pgrep outputs the process ID (PID).

if pgrep -x "vim" > /dev/null; then
    echo "Reloading Vim configuration..."

    # vim: Opens Vim.
    # +":source $VIMRC_DEST":
    # Runs the Vim command :source $VIMRC_DEST, which reloads the new .vimrc configuration.
    # +":q":
    # After reloading, Vim runs :q to quit immediately.
    # This ensures that Vim doesn't stay open unnecessarily.
    vim +":source $VIMRC_DEST" +":q"
fi
