#!/bin/bash

#
#   Author: Akhid Yanuar A.F (https://github.com/yanuarakhid)
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
cat << "EOF"

 ██████╗ ██╗ ██████╗ ██████╗ ███╗   ███╗
██╔════╝ ██║██╔════╝██╔═══██╗████╗ ████║
██║  ███╗██║██║     ██║   ██║██╔████╔██║
██║   ██║██║██║     ██║   ██║██║╚██╔╝██║
╚██████╔╝██║╚██████╗╚██████╔╝██║ ╚═╝ ██║
 ╚═════╝ ╚═╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝

  https://github.com/yanuarakhid/gicom

EOF
echo "List all Directory"
ls -la
git status
read -p "Do you want to add all files ? [y/n] " optn
 
if [ "$optn" = "y" -o "$optn" = "Y" ]
then
    git add .
    read -p "Input Your Commit Message : " msg
    git commit -m "$msg"
    echo "$msg"
    git status
    read -p "Do you want to push to Master Brach ? [y/n] " push
    if [ "$push" = "y" -o "$push" = "Y" ]
    then
        git push origin master
        notify-send 'Push Status' 'Push to Master Branch Success 👍 ' --icon=dialog-information
        cat << "EOF"

██████╗  ██████╗ ███╗   ██╗███████╗         
██╔══██╗██╔═══██╗████╗  ██║██╔════╝         
██║  ██║██║   ██║██╔██╗ ██║█████╗           
██║  ██║██║   ██║██║╚██╗██║██╔══╝           
██████╔╝╚██████╔╝██║ ╚████║███████╗██╗██╗██╗
╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝╚═╝╚═╝
                                            
EOF
    elif [ "$push" = "n" -o "$push" = "N" ]
    then
        exit 0;
    fi
elif [ "$optn" = "n" -o "$optn" = "N" ]
then
    echo "Input Manualy"
    exit 0;
else
    echo "Wrong Input"
    exit 0;
fi