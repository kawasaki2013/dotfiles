#!/bin/bash

# settings {{{
# for cmd.exe, change to UTF8 (default is 932:sjis)
# 65000 UTF-7
# 65001 UTF-8
# 50220 JIS
# 20932 EUC-JP
#   932 SJIS
chcp.com 65001 >/dev/null

# COMSPEC (especially for Octopress)
export COMSPEC=/cygdrive/c/Windows/System32/cmd.exe

# display
export DISPLAY=${DISPLAY:=":0.0"}

# Chocolatey
alias choco='cmd /c choco'
alias cinst='cmd /c cinst'
alias cup='cmd /c cup'
alias cuninst='cmd /c cuninst'

# unset tmp/temp (=C:\Users\user\AppData\Local\Temp)
# for Chocolatey (otherwise it complains...)
unset tmp temp

#}}}

# alias {{{
alias open='cygstart'
alias mail='email'
#}}}

# functions {{{
# ln wrapper{{{
function ln {
  opt="/H"
  if [ "$1" = "-s" ];then
    opt=""
    shift
  fi
  target="$1"
  if [ -d "$target" ];then
    opt="/D $opt"
  fi
  if [ $# -eq 2 ];then
    link="$2"
  elif [ $# -eq 1 ];then
    link=`basename "$target"`
  else
    echo "usage: ln [-s] <target> [<link>]"
    echo "       -s for symbolic link, otherwise make hard link"
    return
  fi
  t_winpath=$(cygpath -w -a "$target")
  t_link=$(cygpath -w -a "$link")
  echo "cmd /c mklink $opt $t_link $t_winpath"
  cmd /c mklink $opt "$t_link" "$t_winpath"
}
# }}}
# }}}
