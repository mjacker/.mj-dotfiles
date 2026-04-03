#!/bin/bash

r=255
g=0
b=128

draw_preview(){
  printf "\e[2J\e[H"
  printf "Use 1/2/3 to select R/G/B, +/- to change, q to quit. \n"

  [[ $selected -eq 1 ]] && printf "\e[34;43m"
  printf "%5s: %5d" "red" "$r"
  printf "\t%*s\n" "$((r/5))" | tr ' ' 'X'
  printf "\e[0m\n"

  [[ $selected -eq 2 ]] && printf "\e[34;43m"
  printf "%5s: %5d" "green" "$g"
  printf "\t%*s\n" "$((g/5))" | tr ' ' 'X'
  printf "\e[0m\n"

  [[ $selected -eq 3 ]] && printf "\e[34;43m"
  printf "%5s: %5d" "blue" "$b"
  printf "\t%*s\n" "$((b/5))" | tr ' ' 'X'
  printf "\e[0m\n"

  printf "selected: %d" "$selected"

  printf "\e[48;2;%d;%d;%dm COLOR PREVIEW \e[0m\n" "$r" "$g" "$b"
  # > $*s, `*` means, take the number from the amoung of caracter of the argument
}

selected=1

while true;
do
  draw_preview
  read -n1 key
  case "$key" in 
    1) selected=1 ;;
    2) selected=2 ;;
    3) selected=3 ;;
    +|-) 
      if [[ "$key" == "+" ]]; then val=5
      elif [[ "$key" == "-" ]]; then val=-5
      fi

      if [[ $selected -eq 1 ]];then ((r+=val))
      elif [[ $selected -eq 2 ]];then ((g+=val))
      elif [[ $selected -eq 3 ]];then ((b+=val))
      fi ;;

    q) break ;;
  esac

  for colors in r g b; do
    [[ ${!colors} -lt 0 ]] && printf -v "$colors" 0
    [[ ${!colors} -gt 255 ]] && printf -v "$colors" 255
  done

done


# [2J - clean screen
# [H top left cursor

