#!/usr/bin/bash

do_update=$(~/.config/waybar/scripts/checkupdates.sh)

if [ "$do_update" -gt 0 ]; then
  echo "Atualizações encontradas para:"
  echo ""
  checkupdates
  echo ""
  echo "Insira a senha para prosseguir com as atualizações..."
  sudo pacman -Syu
  echo ""
  sleep 5
  exit 0
fi

echo "Não há atualizações pendentes..."
sleep 2
exit 0
