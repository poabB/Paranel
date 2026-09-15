# linux panel with settings in tui
# usage: ./paranel

#!/bin/bash
current="$PWD"
red="\e[31m"
green="\e[32m"
endcolor="\e[0m"
date="$date"

echo "
 ---------------------------
|Linux settings panel in TUI|
 ---------------------------
$date
"

# the current path
echo -e "${green}
---------------
| Current path
| $current
${endcolor}"

echo "Select 1 for top/htop 
Select 2 to list all files in current path
Select 3 for current user
Select 4 to use text editor
Select 0 to exit the script
"

read -p "Select the option: " choice

case $choice in
    1) htop ;;
    2) ls -la ;;
    3) whoami ;;
    4) nano ;;
    0) exit ;;
    *) echo "Invalid!" ;;
esac
