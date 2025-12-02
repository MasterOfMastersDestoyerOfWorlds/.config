#!/bin/bash
set -e

echo "[1/3] Updating system..."
sudo pacman -Syu

echo "[2/3] Installing pacman packages..."
sudo pacman -S --needed - < pkglist.txt

if command -v paru >/dev/null 2>&1; then
    echo "[3/3] Installing AUR packages..."
    paru -S --needed - < aurlist.txt
elif command -v yay >/dev/null 2>&1; then
    yay -S --needed - < aurlist.txt
else
    echo "No AUR helper found. Install paru/yay first."
fi

echo "System restore complete!"
