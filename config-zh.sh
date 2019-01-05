#!/bin/sh

echo -e '\e[1;36m配置 i3\e[0m'

echo -e '\e[1;33m================\e[0m'
echo -e '托盘图标'
name=`xrandr | sed -n '2p' | cut -d ' ' -f 1`
echo -e '你的显示设备是'$name
if [ -n $name ]
then
    sed -i 's/eDP1/'"$name"'/g' ~/.config/i3/config
fi
echo '托盘图标设置成功'

echo -e '\e[1;33m================\e[0m'
read -p '你的输入法是fcitx还是ibus?fcitx输入f，ibus输入i，不使用fcitx或者ibus输入n：' input

if [ $input == f ]
then
  `sed -i 's/#exec --no-startup-id fcitx/exec --no-startup-id fcitx/' ~/.config/i3/config`
  echo '设置了fcitx'
elif [ $input == i ]
then
  sed -i 's/#exec --no-startup-id ibus/exec --no-startup-id ibus/' ~/.config/i3/config
  echo '设置了ibus'
else
  echo '你没有使用任何的输入法？'
fi

echo -e '\e[1;33m================\e[0m'
read -p '你需要使用networkmanager的托盘图标吗？输入y或者n：' nmicon

if [ $nmicon = y ]
then
  sed -i 's/#exec --no-startup-id nm-applet/exec --no-startup-id nm-applet/' ~/.config/i3/config
  echo '设置成功，请确保你安装了nm-applet'
fi

echo -e '\e[1;33m================\e[0m'
read -p '你使用xcompmgr合成器（用以使终端背景透明）吗?输入y或者n：' xcomp

if [ $xcomp = y ]
then
  sed -i 's/#exec --no-startup-id xcompmgr &/exec --no-startup-id xcompmgr &/' ~/.config/i3/config
  echo '设置成功，请确保你安装了xcompmgr'
fi

echo -e '\e[1;33m================\e[0m'
read -p '你使用mate-power-manager?输入y或者n：' matepower

if [ $matepower = y ]
then
  sed -i 's/#exec --no-startup-id mate-power-manager/exec --no-startup-id mate-power-manager/' ~/.config/i3/config
  echo '设置成功，请确保你已经安装了mate-power-manager'
fi

echo -e '\e[1;33m================\e[0m'
echo '配置完成。更多配置参考README.md'
