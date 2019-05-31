#!/bin/sh
tar -xJvf Pictures.tar.xz -C ~/
cp -av i3 ~/.config
chmod +x *.sh -R

lang=

function select_lang() {
  while :; do
    echo "which language to use during installation?"
    echo -en "
Input the Number you select.

$(tput bold)1$(tput sgr0) English
$(tput bold)2$(tput sgr0) Chinese
"
    read select_num
    case $select_num in
    '1')
      lang='en'
      break
      ;;
    '2')
      lang='zh'
      break
      ;;
    *)
      continue
      ;;
    esac
  done
}

select_lang

function draw_line() {
  [[ -z $1 ]] && str="-" || str=$1
  seq -s "$str" $COLUMNS | sed "s/[0-9]//g"
}
source ./config-${lang}.sh
