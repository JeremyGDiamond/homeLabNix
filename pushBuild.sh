#!/usr/bin/env bash

# pushs commits to remote

pushd ~/MyNix

git push origin

# Back to where you were
popd

# Notify all commited
echo "NixOS Configs Commited"
notify-send -e "NixOS Configs Commited" --icon=software-update-available