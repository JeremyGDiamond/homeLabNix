#!/usr/bin/env bash

sudo nix-channel --update
sudo nixos-rebuild switch &>nixos-switch.log || (cat nixos-switch.log | grep --color error && exit 1)

echo "NixOS Update OK!"
notify-send -e "NixOS Update OK!" --icon=software-update-available