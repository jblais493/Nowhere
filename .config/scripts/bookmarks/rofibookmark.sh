#!/bin/bash

# Path to your bookmark file
BOOKMARK_FILE="$HOME/.config/scripts/bookmarks/bookmarks"

# Read bookmarks from the file into an array
readarray -t bookmarks < "$BOOKMARK_FILE"

# Create a string containing all the bookmarks
bookmark_string=$(printf '%s\n' "${bookmarks[@]}")

# Use rofi to display the bookmarks and let the user select one
selected=$(echo "$bookmark_string" | rofi -dmenu -i -p "Choose a bookmark:")

# Check if the user selected a bookmark
if [[ -n "$selected" ]]; then
  # Insert the selected bookmark into the active window
  xdotool type --clearmodifiers "$selected"
fi
