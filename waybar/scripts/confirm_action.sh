#!/usr/bin/bash

deny=">>  abort "
acpt=">> confirm"

opts="$deny\n$acpt"

choice=$(echo -e "$opts" | rofi -sync -dmenu \
  -config ~/.config/rofi/confirm-config.rasi \
  -mesg "<span foreground='#cc0000' font='JetBrains Mono Bold 12'>$1</span>
<span foreground='#444444' font='JetBrains Mono 10'>-- CONFIRM ACTION --</span>")

if [ "$choice" = "$acpt" ]; then
  exit 0
else
  exit 1
fi
