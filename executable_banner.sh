#! /bin/bash

display_center(){
    columns="$(tput cols)"
    while IFS= read -r line; do
        printf "%*s\n" $(( (${#line} + columns) / 2)) "$line"
    done < "$1"
}

clear
let "padding=$(tput lines)-15"
let "padding=$padding/2"
output=$(display_center $HOME/logo.txt)

eval "printf '\n%.s' {1..$padding}"
text="Welcome Back"
line=$(printf "%*s\n" $(( (${#text} + $(tput cols)) / 2)) "$text")
output="${output}\n\n${line}"
text="Right now it is;"
line=$(printf "%*s\n" $(( (${#text} + $(tput cols)) / 2)) "$text")
output="${output}\n\n${line}"
text=$(date '+%A %B %-d | %-I:%M%P')
line=$(printf "%*s\n" $(( (${#text} + $(tput cols)) / 2)) "$text")
output="${output}\n${line}"
echo -e "$output" | lolcat
# echo -ne "$output" \\n
eval "printf '\n%.s' {2..$padding}"
