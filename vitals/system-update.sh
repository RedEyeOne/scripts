#!/bin/bash

echo "Starting Sytem update..."

#update system packages for pacman
if command -v pacman &> /dev/null; then 
	echo "________________________________________"
	echo "updating pacman itself (if needed)..."
	sudo pacman -S --needed pacman --noconfirm
	
	echo "Updating system packages with Pacman..."
	sudo pacman -Syu --noconfirm
else
	echo "Pacman not found. Skipping..."
fi

#update system packages for flatpak
if command -v flatpak &> /dev/null; then
	echo "_______________________________________"
	echo "Updating Flatpak packages..."
	flatpak update -y
else 
	echo "Flatpak not found. Skipping..."
fi 

#Update AUR packages using yay
if command -v yay &> /dev/null; then
	echo "_______________________________________"
	echo "Updating AUR packages with yay..."
	yay -Sua --noconfirm
else
	echo "yay not found. Skipping AUR updates..." 
fi

echo "_______________________________________________"
echo "System update completed!"
neofetch
