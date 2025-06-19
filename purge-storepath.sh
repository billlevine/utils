#!/bin/sh
nix-store --query --referrers $1 | xargs nix-store --delete
nix-store --delete $1
