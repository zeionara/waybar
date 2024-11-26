#!/bin/bash

set -e

root="$HOME/.config/waybar"
config="$root/config"

if test ! -d "$root"; then
  mkdir "$root"
fi

if test -f "$config"; then
  mv "$config" "$config.old"
fi

ln "$HOME/waybar/config" "$config"

ln "$HOME/waybar/colors.css" "$root"
ln "$HOME/waybar/style.css" "$root"
