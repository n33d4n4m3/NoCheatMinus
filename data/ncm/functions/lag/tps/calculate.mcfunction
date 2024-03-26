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


scoreboard players operation #temp_0 ncmTPS = #tps_test_timer ncmTPS
scoreboard players operation #tps_test_timer ncmTPS /= #10 ncmTPS

scoreboard players operation .TPS ncmTPS = #tps_test_timer ncmTPS

scoreboard players set #loop ncmTPS 1

worldborder add 1
schedule clear ncm:lag/tps/loop
schedule function ncm:lag/tps/start 1s replace