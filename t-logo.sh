#!/bin/bash 
#This Is Color
RED='\033[0;31m'
GR='\033[0;32m'
#End Of Colour
clear
#Change Directory
cd $PREFIX/etc
#Remove Old files
rm bash.bashrc
rm motd
#Name
sh logo.sh
echo "${GR}What Is Your Name ?"
read name
# Open file descriptor (fd) 3 for read/write on a bash file.
 exec 3<> bash.bashrc
 # Let's print some text to fd 3
echo " PS1='\033[1;32m
\a┏\a━━We━━━Are━━━━━Myanmar━┓\033[1;32m
\a┏\a━\a┃ Young\a  Professional \aTermux ┃--┃ \@ ┃---| \d ┃
\a\a┃\a \a\033[1;32m┗━$name━┛\033[1;36m
\a┗\a┳\a━\a📂\033[1;32m\w\a📂
┗ 🇲🇲 \# 👨‍🔧 -❕\W 🔋🔌🖱️🔰✏️ '



figlet $name | lolcat -a -d 20

shopt -s autocd
shopt -s cdspell
shopt -s checkhash
shopt -s checkwinsize
shopt -s compat31
shopt -s compat32
shopt -s compat40
shopt -s compat41
shopt -s no_empty_cmd_completion
shopt -s histverify
shopt -s histappend
shopt -s dirspell
shopt -s direxpand
shopt -s compat43
shopt -s compat32
shopt -s lithist ">&3

 # Close fd 3 
exec 3>&-
echo " ${RED}Termux Logo Was Changed Go To New Session To See The New"
