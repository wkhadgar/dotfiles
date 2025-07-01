#!/bin/bash

pending=$(pacman -Qu | wc -l)
max=$(pacman -Q | wc -l)

percentage=$((100 * pending / max))
class="class"

if [ "$pending" -gt 0 ]; then
  tooltip="Há $pending atualizações disponíveis."
else
  tooltip="Não há atualizações pendentes!"
fi

while getopts "bj" opt; do
  case $opt in
  b)
    if [ "$pending" -gt 0 ]; then
      exit 0
    else
      exit 1
    fi
    ;;
  j)
    echo "{\"text\": \"$pending\", \"alt\": \"$pending\", \"tooltip\": \"$tooltip\", \"class\": \"$class\", \"percentage\": $percentage }"
    exit 0
    ;;
  *)
    echo "Invalid arguments given"
    exit 1
    ;;
  esac
done

echo "$pending"
