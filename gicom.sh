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

read -p "Do you want to add all files ? [y/n] " optn
 
if [ "$optn" = "y" -o "$optn" = "Y" ]
then
    echo "Josss"
elif [ "$optn" = "n" -o "$optn" = "N" ]
then
    echo "NNNNN"
else
    echo "salah"
    exit 0;
fi    