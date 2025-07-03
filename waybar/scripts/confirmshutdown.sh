#!/usr/bin/bash

choiche=$(printf "Cancelar\nDesligar" | rofi -sync -dmenu -config ~/.config/rofi/confirm-config.rasi -mesg "Tem certeza?")

if [ "$choiche" = "Desligar" ]; then
  shutdown now
fi
