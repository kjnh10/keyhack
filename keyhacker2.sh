#!/usr/bin/zsh

cd  `dirname $0`

sleep 2

# keyrepeatの設定
  xset r rate 250 30

# compile xkb
  xkbcomp ./Xkeymap.xkb $DISPLAY

# OneShot
  PID=`pidof xcape`
  if [ -n ${PID} ]; then
    killall xcape
  fi
  xcape -e '#65=space'
  xcape -e '#102=Muhenkan'
  xcape -e '#100=Henkan_Mode'
