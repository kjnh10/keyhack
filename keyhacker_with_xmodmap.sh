#!/usr/bin/zsh

PID=`pidof xcape`
if [ -n ${PID} ]; then
	killall xcape
fi

# space_shift
	xmodmap -e 'keycode 255=space';
	xmodmap -e 'keycode 65=Shift_L';
	xcape -e '#65=space'

# henkan
	xmodmap -e 'keycode 254=Henkan';
	xmodmap -e 'keycode 100=Hyper_R';
	# xmodmap -e "remove mod4 = $spare_modifier" # hyper_l is mod4 by default
	# xmodmap -e "add mod3 = $spare_modifier"
	xcape -e '#100=Henkan'

# muhenkan
	spare_modifier="Mode_switch"
	xmodmap -e 'keycode 253=Muhenkan';
	xmodmap -e "keycode 102 = $spare_modifier"
	xcape -e '#102=Muhenkan'

# Caps_Lock → Control
	xmodmap -e "remove lock = Caps_Lock"
	xmodmap -e "keycode 66 = Control_L"
	xmodmap -e "add control = Control_L"

	# xmodmapの指定順序
	# key,s+key,Mode_switch+key,Mode_switch+s+key,AltGr+key,AltGr+Shift+key
	xmodmap -e "keycode 43 = h H Left Left"
	xmodmap -e "keycode 44 = j J Down Down"
	xmodmap -e "keycode 45 = k K Up Up"
	xmodmap -e "keycode 46 = l L Right Right"
	xmodmap -e "keycode 47 = semicolon plus semicolon colon"


# keyrepeatの設定
xset r rate 200 30

# xremap
	xremap ~/Dropbox/01_projects/sandbox_for_keyhack/xremap.rb
