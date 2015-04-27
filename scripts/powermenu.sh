#!/bin/bash
#
# a simple dmenu session script
#
###

DMENU="dmenu -i -nb #000000 -nf #aaaaaa -sb #000000 -sf #ff8c00"
choice=$(echo -e "logout\nshutdown\nreboot" | $DMENU)

case "$choice" in
  logout) slimlock ;;
  shutdown) systemctl poweroff & ;;
  reboot) systemctl reboot &;;
esac
