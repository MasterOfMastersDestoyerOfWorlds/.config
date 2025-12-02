#!/bin/bash
set -e

echo "[1/3] Installing git..."
sudo pacman -Sy --noconfirm git

echo "[2/3] Cloning config repo..."
git clone https://github.com/MasterOfMastersDestoyerOfWorlds/.config.git ~/config-restore

echo "[3/3] Running rebuild script..."
cd ~/config-restore
chmod +x rebuild.sh
./rebuild.sh

echo "Done! System bootstrap complete."
