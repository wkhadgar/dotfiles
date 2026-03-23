#!/usr/bin/bash

do_update=$(~/.config/waybar/scripts/check_updates.sh)

notif_txt="MAGI NETWORK IS UP TO DATE"

if [ "$do_update" -gt 0 ]; then
  echo "FOUND NEW MAGI PROTOCOLS FOR:"
  echo ""
  paru -Qua
  checkupdates
  echo ""
  echo "ACCEPT MAGI UPDATES? [Y/n]"
  read -r update_answer
  case "$update_answer" in
  [nN]*)
    notif_txt="ABORTED UPDATES"
    sleep 1
    ;;
  [yY]* | "")
    paru -Syu --noconfirm
    sleep 5
    up_to_date=$?
    echo ""
    if [ "$up_to_date" -gt 0 ]; then
      notif_txt="ERROR $up_to_date"
    else
      notif_txt="MAGI PROTOCOLS UPDATED"
    fi
    ;;
  *)
    exit 1
    ;;
  esac
fi

notify-send "MAGI SYSTEM UPDATE STATUS" "\n -- $notif_txt --"
exit 0
