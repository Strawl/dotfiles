#!/bin/zsh
echo -n "Password: "
read -s password
echo
echo -n "Salt: "
read -s salt
echo
output=$(echo -n $password | argon2 $salt -t 2 -k 16 -l 16 -e | awk '{print substr ($0, 27 )}')
echo ${output}
echo -n ${output} | xclip -sel clip
