#!/usr/bin/env bash

# pushs commits to remote

pushd ~/MyNix

nix-shell workstation.nix

# Back to where you were
popd