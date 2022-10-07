**[中文介绍](README-zh-CN.md)**

---

![](screenshot.png)

# install & configure

## install softwares

You can search for package names using the package manager, or search keywords  on [pkgs.org](https://pkgs.org) to determine the package name.

- base

  -  `i3` : in some distributions,  `i3`  may be a  package-group name, that contains i3 wm and other components,  `i3-wm` ,  `i3-gaps`,  `i3block` ,  `i3lock`and`i3status`. And in some distributions,  `i3` may only refer to `i3wm`.
  -  Suitable terminal (see [terminal](#terminal), select a terminal emulator )
  -  `dmenu`  Applications launcher
  -  `feh`   image viewer , show wallpaper

- optional

  - `xcompmgr`   Set terminal transparency

  - `scrot`  Screeshot (this configuration added shortcut for scrot)

  - `thunar` or `pcmanfm`   GUI file manager

   - for `networkmanager` user
      - `nm-connection-editor`  Networkmanager GUI
      - `nm-applet`  Networkmanager's tray icon

  - `blueman`  Bluetooth gui tool

      The attached tray tool is named `blueman-applet`

  - `mate-power-manager`  Power manager tool

  - `acpi`  Advanced Configuration and Power Interface (display battery info)

  - `alsa-utils`  Sound management

  - `xfce4-appfinder`  Quickly search for the program's launcher

## configure i3

- Downlod this config and extra it,  put `i3` and `i3status` in the `~/.config/` , and put `Pictures`(including some sample wallpapers) in the current user's home directory (`~/`).

  If you need to display the tray icon, you may need to refer to the following section of the [tray Icons](#tray Icons) for configuration.

  A simple initial configuration can be done using the script `config-zh.sh`.

or

- execute this command:

  ```shell
  curl -# -L -o i3.zip https://github.com/levinit/i3wm-config/archive/master.zip
  unzip i3.zip
  cd i3wm-config-master
  bash config.sh
  ```

  If it show `xrandr: command not found` ,  you need to install `xorg-xrandr` , then execute the above command again.

# Introductions for the configs

Some important notes about this configuration.

## shortcuts

In this configuration,  `$mod key` is `Mod4`，**Generally** , it is "Windows logo" key  or "Super" key,  `Alt` is `mod1`, Enter is `Return`.

Tip: Install `xorg-xev`, exec command `xev` in the terminal, then press any key, it will show the key's name.

- `Super`+`d`  dmenu
- `Super`+`Enter`  open the default [terminal](#terminal)

For other i3wm default shortcuts , see the  **i3wm related documentation** or view the config file.

---

The following are the custom shortcuts in this configuration file (Reference vim and windows usage habits).

- `Super`  Temporarily display i3bar (will be hidden after releasing the `Super` key)
- `Super`+`m`  switch i3bar show/hideen mode

- xfce dropdown terminal  `Alt`+`/`

  if your default terminal is xfce-terminal

- xfce4-appfinder  `Super`+`a`

  need install the application


- screenshot (full screen)  `Super`+`PrtSc`

    "PrtSc" is "PrintScreen" key , need `scrot`.

- open filemanager  `Super`+`e`

    need `thunar`（e-explore）

- close window  `Alt`+`F4`

- hide window and show the hide window `Super`+`minus` and `Super`+`plus`

    "minus" is "-" key ,and "plus" is "+" key. Here, in order to avoid confusion with +, the name is described in English.

- change window style：
  - `Super`+`n`   with border and title bar (default , **n**ormal)
  - `Super`+`u`    without boder and title bar (**u**nnormal )
  - `Super`+`o`    one pixel boder and no title bar (**o**ne pixel border )
  - `Super`+`b`    change border style in above 3 styles（**b**order style)

- window tilling mode

  - `Super`+`s`    stack mode（**s**tack）
  - `Super`+`t`    tabbed mode（**t**abbed）
  - `Super`+`c`   **change** tile mode betwen horizontal mode and vertical mode (default ,**c**hange | or **c**arvel built :D ）。

- switch focus window

   `Super`+`h` or `j` or `k` or `l`
    or
    `Super`+arrow keys

- move focus window (tiling style)

  `Super`+`Shift`+`h` or `j` or `k` or `l`
  or
  `Super`+`Shift`+ arrow keys

- separate window
  - `Super`+`v`    vertical mode (**v**ertical)
  - `Super`+`Shift`+`h`   horizon mode (default , **h**orizon)

- workspace switching


  -  `Super`+`tab`  -- next
  -  `Alt`+`tab`  -- previous

-  reload and restart i3wm

     -  `Super`+`Shift`+`s`  -- reload i3wm config
     -  `Super`+`Shift`+`r`  -- restart i3wm

-  lock/poweroff/rebot/exit menu : `Super`+`Shift`+`q` it will show a message ,then press


  - `l`  -- lock screen
  - `p`  -- poweroff
  - `r` -- reboot
  - `e` -- exit (i3wm)
- adjust the volume and brightness ( for laptop)

  - volume
    - `Fn` and volume key
    - use `alsamixer` (need alsa-utils)

    - `Fn` and brightness key （need a power manager tool , recommend `mate-power-manager`)

  tip: maybe `Fn` is not necessary.

## wallpaper and lock screen
- wallpaper

  Random mode is default , it use a script , see [i3/wallpaper.sh](i3/wallpaper.sh) . Edit [i3/config](i3/config) for changing mode.

  - random mode : random switching wallpaper, put pictures in `~/Pictures/wallpapers` .
  - static mode : one pictures as a wallpaper , path is  `~/Pictures/wallpapers/wallpaper.jpg`

- lock screen

  - background path :  `~/Pictures/wallpaper/lock/lock.jpg`
  - lock : `Super`+`Alt`+`l`
  - unlock : input your user password , then press "Enter" key .


## power management
see [i3/config](i3/config) , it has a line , you can adjust the seconds :

> exec --no-startup-id xset dpms 333 666

In idle state , screen will turn off after 333 seconds , system will suspend after 666 seconds.

You can also use `mate-power-manager` (or other tool) for power management.



see more info about power management:

- [power-management](https://wiki.archlinux.org/index.php/Power_management)
- [laptop](https://wiki.archlinux.org/index.php/Laptop)
- [suspend and hibernate](https://wiki.archlinux.org/index.php/Power_management/Suspend_and_hibernate)

## terminal

If you want a transparent background terminal , need to install  `xcompmgr` (or `compton`  .etc )  . It is recommended to select terminals that are more convenient to set transparency, such as `roxterm` , `xfce4-terminal` and `terminator` .

After press terminal shortcut,  It tries to start one of the following in the order(see [i3wm-termial](http://jlk.fjfi.cvut.cz/arch/manpages/man/i3-sensible-terminal.1)):

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

## tray icons

Open [i3/config](i3/config) , find this line :

> exec --no-startup-id xrandr --output eDP1 --primary

eDP1 is the display device's name , you can use `xrandr | grep connected`  to get your display device's name .

 this is my display device info:

```
Screen 0: minimum 8 x 8, current 1920 x 1080, maximum 32767 x 32767
eDP1 connected 1920x1080+0+0 (normal left inverted right x axis y axis) 310mm x 170mm
```

so , **eDP1** is my display device's name , if your display device's name is not **eDP1** , you should modify this line `exec --no-startup-id xrandr --output eDP1 --primary` ，use your display device's name instead of `eDP1`.



Or you can try these comands for modification（`xrandr`need`xorg-xrandr`）:

```shell
name=`xrandr | sed -n '2p' | cut -d ' ' -f 1`
sed -i 's/eDP1/'"$name"'/' ~/.config/i3/config
```

If it show `xrandr: command not found` , install `xorg-xrandr` , then excuted commands above again.

# Other Tips

- not found this package while installing

  Maybe this package  is another name on your distribution. Using the fuzzy search in your package manger,  also search the real name in this site https://pkgs.org.

- emoji need a font such as `fonts-symbola ` (perhaps its name is `ttf-symbola`)


- `thunar` /`pcmanfm` can not use Trash :  install `gvfs`
- mount MTP divice or other removable disk : install `gvfs-mtp` or `libmtp`(see[archwiki:MTP](https://wiki.archlinux.org/index.php/MTP) )
- change the window/icon/cursor theme or font : `lxappearance` (recommend)
- notfity popup box: `xfce4-notifyd`
- high DPI devices (see[archwiki:HIDPI](https://wiki.archlinux.org/index.php/HiDPI#X_Resources))

edit `~/.Xresources` add (example) :

>Xft.dpi: 144
>Xft.autohint: 0
>Xft.lcdfilter:  lcddefault
>Xft.hintstyle:  hintfull
>Xft.hinting: 1
>Xft.antialias: 1
>Xft.rgba: rgb

144 is dpi (adjust according to the actual display situation). Then edit`~/.xinitrc` , add :

>xrdb -merge ~/.Xresources

Of course, the text under the high screen is too small, you can also adjust the font size (you can use lxappearance).

- turn off waring sound（alarm sound/beep sound）
  see[PC speaker](https://wiki.archlinux.org/index.php/PC_speaker)
  `echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf`
  or
  `amixer set channel 0% mute`(need `alsa-utils`)
  or
  `echo xset -b >> /etc/xprofile`