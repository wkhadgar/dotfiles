#!/usr/bin/bash

do_update=$(~/.config/waybar/scripts/checkupdates.sh)

notif_txt="\nNão há atualizações pendentes..."

if [ "$do_update" -gt 0 ]; then
  echo "Atualizações encontradas para:"
  echo ""
  paru -Qu
  echo ""
  read -r -p "Deseja prosseguir com as atualizações? [Y/n]" update_answer
  case "$update_answer" in
  [nN]*)
    notif_txt="Atualização cancelada..."
    sleep 1
    ;;
  [yY]* | "")
    yes | paru -Syu
    sleep 5
    up_to_date=$?
    echo ""
    if [ "$up_to_date" -gt 0 ]; then
      notif_txt="Não foi possível atualizar com sucesso..."
    else
      notif_txt="Sistema atualizado com sucesso!"
    fi
    ;;
  *)
    exit 1
    ;;
  esac
fi

notify-send Atualizações "\n$notif_txt"
exit 0
