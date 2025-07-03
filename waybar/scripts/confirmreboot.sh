#!/usr/bin/bash

choiche=$(printf "Cancelar\nReiniciar" | rofi -sync -dmenu -config ~/.config/rofi/confirm-config.rasi -mesg "Tem certeza?")

if [ "$choiche" = "Reiniciar" ]; then
  reboot
fi
