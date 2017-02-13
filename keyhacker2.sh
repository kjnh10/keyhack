#!/usr/bin/zsh

# keyrepeatの設定
	xset r rate 250 30

# compile xkb
	xkbcomp ~/Dropbox/01_projects/sandbox_for_keyhack/Xkeymap.xkb $DISPLAY

# OneShot
	PID=`pidof xcape`
	if [ -n ${PID} ]; then
		killall xcape
	fi
	xcape -e '#65=space'
	xcape -e '#102=Muhenkan'
	# xcape -e '#100=Henkan_Mode'

# xremap
	# xremap ~/Dropbox/01_projects/sandbox_for_keyhack/xremap.rb

