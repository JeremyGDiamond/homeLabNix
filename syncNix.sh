#!/usr/bin/env bash

# Get current generation metadata
echo "Getting gen metadata"
current=$(nixos-rebuild list-generations --json | jq '.[] | select(.current==true)')
current=$(echo $current|tr -d '\n')
# current=${current// /}
# echo $current

# Commit all changes witih the generation metadata
echo "commiting"
git add -A
git commit -m "$current"