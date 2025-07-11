#!/bin/sh
nix-store --query --referrers $1 | xargs nix-store --delete
nix-store --query --roots $1 | cut -d' ' -f1 | xargs rm
nix-store --delete $1
