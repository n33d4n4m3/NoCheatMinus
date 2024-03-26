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
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
# ...
# Description:  Part of the TPS-Checker subroutine.
# Author:       Frogster, 2mal3
# ...


schedule function ncm:lag/tps/loop 1t replace

scoreboard players add #tps_test_timer ncmTPS 1

execute store result score #temp_0 ncmTPS run worldborder get
execute if score #temp_0 ncmTPS = #worldborder ncmTPS run function ncm:lag/tps/calculate