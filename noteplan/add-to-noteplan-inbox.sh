#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Add to NotePlan Inbox
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📝

# Documentation:
# @raycast.description Add an item to the NotePlan inbox file
# @raycast.author phphphph
# @raycast.authorURL https://raycast.com/phphphph
# @raycast.argument1 { "type": "text", "placeholder": "Text" }

current_date=$(date +%Y%m%d)
file_path="/Users/philipp/Library/Containers/co.noteplan.NotePlan-setapp/Data/Library/Application Support/co.noteplan.NotePlan-setapp/Notes/00-Inbox.md"

# Check if file exists and doesn't end with newline
if [[ -f "$file_path" && -s "$file_path" ]]; then
    # Check if the last character is not a newline
    if [[ $(tail -c1 "$file_path" | wc -l) -eq 0 ]]; then
        # File doesn't end with newline, so add one before our content
        echo "" >> "$file_path"
    fi
fi

# Add the content
echo "$1" >> "$file_path"

