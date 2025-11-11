#!/usr/bin/bash

CRITICAL_UPDATE_AMOUNT=25

pending=$(checkupdates | wc -l)
#max=$(pacman -Q | wc -l)
max=$CRITICAL_UPDATE_AMOUNT

percentage=$((100 * pending / max))
percentage=$((percentage > 100 ? 100 : percentage))
class="class"
alt=0

if [ "$pending" -gt 0 ]; then
  tooltip="Há $pending atualizações disponíveis."
else
  tooltip="Não há atualizações pendentes!"
fi

while getopts "bj" opt; do
  case $opt in
  b)
    if [ "$pending" -gt 0 ]; then
      echo "true"
      exit 0
    else
      echo "false"
      exit 1
    fi
    ;;
  j)
    if [ "$pending" -gt 0 ]; then
      alt="$pending"
    else
      alt=""
    fi
    echo "{\"text\": \"$pending\", \"alt\": \"$alt\", \"tooltip\": \"$tooltip\", \"class\": \"$class\", \"percentage\": $percentage }"
    exit 0
    ;;
  *)
    echo "Invalid arguments given"
    exit 1
    ;;
  esac
done

echo "$pending"
