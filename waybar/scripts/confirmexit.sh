#!/usr/bin/bash

choiche=$(printf "Cancelar\nSair" | rofi -sync -dmenu -config ~/.config/rofi/confirm-config.rasi -mesg "Tem certeza?")

if [ "$choiche" = "Sair" ]; then
  hyprctl dispatch exit
fi
