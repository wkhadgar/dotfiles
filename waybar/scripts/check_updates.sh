#!/usr/bin/bash

CRITICAL_UPDATE_AMOUNT=45
pending=$(checkupdates 2>/dev/null | wc -l)
aur=$(paru -Qua 2>/dev/null | wc -l)

total=$((pending + aur))

percentage=$((100 * total / CRITICAL_UPDATE_AMOUNT))
((percentage > 100)) && percentage=100

if ((total > 0)); then
  tooltip="$pending + $aur AUR"
  class="updates"
  alt="$total"
else
  class="no-updates"
  alt=""
  total=""
fi

while getopts "bj" opt; do
  case $opt in
  b)
    ((total > 0)) && {
      echo "true"
      exit 0
    }
    echo "false"
    exit 1
    ;;
  j)
    # Output raw JSON
    printf '{"text": "%s", "alt": "%s", "tooltip": "%s", "class": "%s", "percentage": %s}\n' \
      "$total" "$alt" "$tooltip" "$class" "$percentage"
    exit 0
    ;;
  *)
    echo "Invalid arguments given" >&2
    exit 1
    ;;
  esac
done

echo "$total"
