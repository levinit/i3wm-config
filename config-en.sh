#!/bin/sh

echo -e '\e[1;36m configure i3\e[0m'

echo -e '\e[1;33m================\e[0m'
echo -e 'tray icon'
name=`xrandr | sed -n '2p' | cut -d ' ' -f 1`
echo -e 'your display device is '$name
if [ -n $name ]
then
    sed -i 's/eDP1/'"$name"'/g' ~/.config/i3/config
fi
echo 'setted tray icon'

echo -e '\e[1;33m================\e[0m'
read -p 'Do you use "networkmanager" tray icon ? input y or n:' nmicon

if [ $nmicon = y ]
then
  sed -i 's/#exec --no-startup-id nm-applet/exec --no-startup-id nm-applet/' ~/.config/i3/config
  echo 'OK,please make sure nm-applet has been installed'
fi

echo -e '\e[1;33m================\e[0m'
read -p 'Do you use "xcompmgr"(make the terminal transparent）? input y or n:' xcomp

if [ $xcomp = y ]
then
  sed -i 's/#exec --no-startup-id xcompmgr &/exec --no-startup-id xcompmgr &/' ~/.config/i3/config
  echo 'OK,please make sure xcompmgr has been installed'
fi

echo -e '\e[1;33m================\e[0m'
read -p 'Do you use "mate-power-manager" ? input y or n:' matepower

if [ $matepower = y ]
then
  sed -i 's/#exec --no-startup-id mate-power-manager/exec --no-startup-id mate-power-manager/' ~/.config/i3/config
  echo 'OK,please make sure mate-power-manager has been installed'
fi

echo -e '\e[1;33m================\e[0m'
echo 'Done!More info see README-en.md'
