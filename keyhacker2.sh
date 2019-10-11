#!/usr/bin/zsh

# keyrepeatの設定
	xset r rate 250 30

# compile xkb
	xkbcomp ./Xkeymap.xkb $DISPLAY

# OneShot
	PID=`pidof xcape`
	if [ -n ${PID} ]; then
		killall xcape
	fi
	./xcape/xcape -e '#65=space'
	./xcape/xcape -e '#102=Muhenkan'
	# xcape -e '#100=Henkan_Mode'
