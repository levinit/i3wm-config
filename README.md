[English introduction](README-en.md)

---

![](screenshot.png)

# 安装配置

## 安装软件

可使用包管理器或在[pkgs.org](https://pkgs.org)搜索关键字以确定包名。

- 基本
  - `i3 `：某些发行版中`i3`可能为一个包组名，它包含i3窗口管理器和其他组件，`i3-wm` 、 `i3-gaps`、 `i3block` 、 `i3lock`和`i3status`，另一些发行版中`i3`可能仅仅指`i3wm`。
  - 适合的终端（参照下文[终端](#终端) 选择一个终端）
  - `dmenu`  程序启动器
  - `feh`  图片浏览器，展示壁纸
- 配套可选
  - `xcompmgr` 终端透明

  - `scrot`   截屏（本配置使用的截屏快捷键调用此工具）

  - `thunar`或`pcmanfm`    图形界面文件管理器

  - `networkmanager`用户

    - `nm-connection-editor`  图形界面的联网管理工具
    - `nm-applet`（或名`network-manager-applet`）托盘图标

  - `blueman`  蓝牙

    其附带的托盘工具名为`blueman-applet`

  - `mate-power-manager`  电源管理工具

  - `acpi`  电源配置接口工具(用于显示电池信息)

  - `alsa-utils`   声音管理

  - `xfce4-appfinder`   可以快速搜索程序的启动器

## 配置i3

- 下载本配置文件并解压，将i3和i3status放于`~/.config/`目录，将`Pictures`（包含几张示例壁纸）放于当前用户家目录下（即`~/`下）。

  如果需要显示托盘图标，可能需要参考后面[托盘图标](#托盘图标)一小节的内容进行配置。

  可使用脚本`config-zh.sh`进行简单的初始配置。


或者

- 直接执行：

  ```shell
  curl -# -L -o i3.zip https://github.com/levinit/i3wm-config/archive/master.zip
  unzip i3.zip
  cd i3wm-config-master
  bash config.sh
  ```
  
  如果提示`xrandr: command not found`，则需要先安装`xorg-xrandr`再执行上述命令。

# 本配置的说明

关于本配置的一些重要说明。
## 快捷键
配置中`$mod key`使用的默认的mod4，**一般指的是**windows键或super键，Alt键在配置中写作`mod1`，回车键Enter写作`Return`。

提示：安装`xorg-xev`，在终端执行`xev`命令，按下任意按键即可知道该按键的名字。

- `Super`+`d`  dmenu
- `Super`+`Enter`  打开默认 [终端](#终端)

其他默认的i3wm的快捷键请参阅i3wm相关文档或查看config文件。

---

以下列出此配置文件的自定义快捷键的说明（参照了vim和windows使用习惯）。

- `Super`  暂时显示i3bar（松开`Super`键后将隐藏）

- 切换i3bar显示或隐藏模式  `Super`+`m`

- xfce下拉终端  `Alt`+`/`

  前提是默认终端为xfce4-terminal

- xfce程序启动器  `Super`+`a`

  需要安装xfce4-appfinder


- 截图 `Super`+`PrtSc`（配置里绑定的是scrot截屏工具，**需要安装scrot**，PrtSc即PrintScreen键）

- 文件管理器  `Super`+`e`

  配置中使用的是thunar文件管理器（e-explore）

- 关闭窗口  `Alt`+`F4`

- 隐藏和再现窗口  `Super`+`minus`和`Super`+`plus`

  minus即是减号所在键，plus即是加号所在键，这里为了不和`+`混淆而以英文名描述。

- 调整窗口边框风格
  - `Super`+`n`  有边框和标题栏（n-normal）
  - `Super`+`u`  无边框和标题栏（默认，u-unnormal）
  - `Super`+`o`  1像素边框（o-one pixel）
  - `Super`+`b`   可在上面三种风格来回切换（b-border style）

- 窗口平铺模式

  - `Super`+`s`  堆叠式（s-stacking）
  - `Super`+`t`  标签式（t-Tab）
  - `Super`+`c`  在垂直平铺和水平平铺之间来回切换（默认，c-change）

- 切换焦点窗口
  `Super`+`h`或`j`或`k`或`l`
  或者
  `Super`+上下左右箭头

- 移动焦点窗口（平铺模式）
  `Super`+`Shift`+`h`或`j`或`k`或`l`
  或者
  `Super`+`Shift`+`上下左右箭

- 分割窗口
  - `Super`+`v`    垂直分割（v-vertical）。
  - `Super`+`Shift`+`h`   水平分割（默认风格，h-horizon）。

- 相邻工作区切换


  - `Super`+`Tab`    后一个
  - `Alt`+`Tab`    前一个

- 重启和重载i3

  - `Super`+`Shift`+`s`  -- 重载i3配置（修改过配置文件后使用该操作）
  - `Super`+`Shift`+`r`  -- 重启i3

- 锁屏/关机/重启/退出 菜单：按下`$mod`+`Shift`+`q` 唤出该菜单，然后按下：


  - `l`    锁屏
  - `p`    关机
  - `r`    重启
  - `e`    退出i3

- 亮度和音量（笔记本）

  - 音量
    - `Fn`+音量加减键或静音（荧幕不会出现提示，可参看bar上的显示）
    - `alsamixer`（需要`alsa-utils`）
  - 亮度：`Fn`+`亮度加减键`（需要电源管理软件，推荐**mate-power-manager**）

  注：也可能不需要按下fn键，这和其BIOS中是否设置了需要fn辅助按键有关。

## 壁纸和锁屏
- 壁纸

  随机模式是本配置的默认模式，它使用了 [i3/wallpaper.sh](i3/wallpaper.sh) 这个脚本。编辑  [i3/config](i3/config) 文件可切换模式。

  - 随机模式：自动切换壁纸，将要用作壁纸的图片放到`~/Pictures/wallpapers` 即可。
  - 静态模式：使用一张图片作壁纸，图片路径是`~/Pictures/wallpaper/wallpaper.jpg` 。

- 锁屏

  - 图片路径是`~/Pictures/wallpaper/lock/lock.jpg`
  - 使用`Super`+`Alt`+`l` 锁屏
  - 解锁：输入用户密码再按回车键即锁屏。

*建议用一个固定的路径设置壁纸或锁屏，需要更换壁纸的时候将新图片命名位wallpaper放进去覆盖即可，这样比较方便（当然要注意后缀名是否一致）。*


## 电源管理
在 [i3/config](i3/config) 配置中有一行：

> exec --no-startup-id xset dpms 333 666

意思是系统闲置333秒后灭屏，666秒后系统挂起。根据自己需要进行修改。

你也可以使用mate-power-manager或者其他电源管理工具。



一些有关电源管理的参考信息：

- [电源管理](https://wiki.archlinux.org/index.php/Power_management_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))
- [linux笔记本相关](https://github.com/levinit/itnotes/blob/master/linux/laptop%E7%AC%94%E8%AE%B0%E6%9C%AC%E7%9B%B8%E5%85%B3.md)
- [挂起、睡眠和休眠](https://wiki.archlinux.org/index.php/Suspend_hybrid-sleep_and_hibernate_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))

## 终端

如果需要终端背景透明的效果，需要安装xcompmgr（或者compton）。推荐选择可以较为方便设置透明度的终端，如roxterm、xfce-terminal和terminator。

按下终端启动快捷键后，它会试图按以下顺序一一执行，直到成功启动某虚拟终端（参看 [i3wm-termial](http://jlk.fjfi.cvut.cz/arch/manpages/man/i3-sensible-terminal.1)）：

>$TERMINAL (this is a non-standard variable)
>
>x-terminal-emulator (only present on Debian and derivatives)
>
>urxvt
>
>rxvt
>
>termit
>
>terminator
>
>Eterm
>
>aterm
>
>uxterm
>
>xterm
>
>gnome-terminal
>
>roxterm
>
>xfce4-terminal
>
>termite
>
>lxterminal
>
>mate-terminal
>
>terminology
>
>st
>
>qterminal
>
>lilyterm
>
>tilix
>
>terminix
>
>konsole

## 托盘图标
打开 [i3/config](i3/config) ，找到这行

> exec --no-startup-id xrandr --output eDP1 --primary

其中eDP1是我的计算机的显示设备的名字。使用`xrandr | grep connected`查看计算机显示设备名称。

例如我的显示内容有：

```shell
Screen 0: minimum 8 x 8, current 1920 x 1080, maximum 32767 x 32767
eDP1 connected 1920x1080+0+0 (normal left inverted right x axis y axis) 310mm x 170mm
```



其中的`eDP1`便是我的显示设备名称。如果你的显示设备名称不是`eDP1` ，那么需要修改`exec --no-startup-id xrandr --output eDP1 --primary`这行中`eDP1`为你的显示设备的名字。

或者你可以使用xrandr（需要安装有`xorg-xrandr`）获取设备信息后自行修改：

```shell
name=`xrandr | sed -n '2p' | cut -d ' ' -f 1`
sed -i 's/eDP1/'"$name"'/' ~/.config/i3/config
```

如果提示`xrandr: command not found`，则需要先安装`xorg-xrandr`在执行上述命令。

# 其他提示

- 安装时没有这个软件

  一个软件包在不同发行版上可能有不同的名字，建议使用包管理器进行模糊搜索或者到`https://pkgs.org`上搜索该软件包在你的linux发行版上的实际包名。

- 无法显示emoji图标需安装相关字体包如`fonts-symbola`（也可能名为`ttf-symbola`）

- pcmanfm/thunar的垃圾桶功能需安装`gvfs`

- 挂载mtp设备安装`gvfs-mtp`或`libmtp`(参考[archwiki:MTP](https://wiki.archlinux.org/index.php/MTP_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#.E5.AE.89.E8.A3.85))

- 更改窗口主题、应用图标、字体和鼠标主题等可使用lxappearance

- 提示弹框可以使用`xfce4-notifyd`

- 高分辨显示器缩放问题（参考[archwiki:HIDPI](https://wiki.archlinux.org/index.php/HiDPI#X_Resources))

  在用户目录下编辑（如果没有则新建）`~/.Xresources`，添加以下内容：

  > Xft.dpi: 144
  > Xft.autohint: 0
  > Xft.lcdfilter:  lcddefault
  > Xft.hintstyle:  hintfull
  > Xft.hinting: 1
  > Xft.antialias: 1
  > Xft.rgba: rgb

  144就是dpi，根据实际情况调整大小。 保存该文件，然后编辑~/.xinitrc，加入：

  > xrdb -merge ~/.Xresources

  当然高分屏下文字过小，也可以适当调整字体大小（可以使用lxappearance）。

- 关闭警告声（alarm sound/beep/蜂鸣）
  参考[PC speaker](https://wiki.archlinux.org/index.php/PC_speaker),方法多样,如：
  `echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf`
  或
  `amixer set channel 0% mute`(安装alsa-utils)
  或
  `echo xset -b >> /etc/xprofile`