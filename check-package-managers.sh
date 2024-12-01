#!/bin/bash

# List of package managers to check
package_managers=("pacman" "yay" "paru" "flatpak" "snap" "npm" "pip" "gem" "cargo" "apt" "dnf" "brew")

echo "Checking for installed package managers..."

for manager in "${package_managers[@]}"; do 
	if command -v $manager &> /dev/null; then
		echo "$manager found"
	else 
		echo "$manager not found"
	fi
done
