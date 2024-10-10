#!/bin/bash

INTERNAL="eDP-1" # Pantalla de la laptop
EXTERNAL="DP-1"  # Monitor externo

case "$1" in
"only-external")
  hyprctl dispatch dpms on $EXTERNAL
  hyprctl dispatch dpms off $INTERNAL
  ;;
"extend")
  hyprctl dispatch dpms on $EXTERNAL
  hyprctl dispatch dpms on $INTERNAL
  hyprctl dispatch movefocus 1
  ;;
*)
  echo "Usage: $0 {only-external|extend}"
  ;;
esac
