#!/bin/bash

TARGET_DIR=${1:-.}
cd "$TARGET_DIR" || exit

echo "Аналізуємо вміст директорії: $(pwd)"
echo "-----------------------------------"

for item in *; do
    [ -e "$item" ] || continue

    if [ -d "$item" ]; then
        echo "$item є директорією."
    elif [ -f "$item" ]; then
        DIR_NAME="${item}_dir"
        mkdir -p "$DIR_NAME"
        mv "$item" "$DIR_NAME/"
        echo "$item переміщений."
    fi
done
